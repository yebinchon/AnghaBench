
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int value; int key; } ;
struct TYPE_10__ {int version; int len; } ;
typedef TYPE_1__ ID3v2EncContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 int MKBETAG (char,char,char,char) ;
 TYPE_2__* av_dict_get (int *,char*,TYPE_2__*,int ) ;
 int ff_id3v2_34_metadata_conv ;
 int ff_id3v2_3_tags ;
 int ff_id3v2_4_metadata_conv ;
 int ff_id3v2_4_tags ;
 int ff_id3v2_tags ;
 int ff_metadata_conv (int **,int ,int *) ;
 int id3v2_3_metadata_split_date (int **) ;
 int id3v2_check_write_tag (TYPE_1__*,int *,TYPE_2__*,int ,int) ;
 int id3v2_put_priv (TYPE_1__*,int *,int ,int ) ;
 int id3v2_put_ttag (TYPE_1__*,int *,int ,int ,int ,int) ;

__attribute__((used)) static int write_metadata(AVIOContext *pb, AVDictionary **metadata,
                          ID3v2EncContext *id3, int enc)
{
    AVDictionaryEntry *t = ((void*)0);
    int ret;

    ff_metadata_conv(metadata, ff_id3v2_34_metadata_conv, ((void*)0));
    if (id3->version == 3)
        id3v2_3_metadata_split_date(metadata);
    else if (id3->version == 4)
        ff_metadata_conv(metadata, ff_id3v2_4_metadata_conv, ((void*)0));

    while ((t = av_dict_get(*metadata, "", t, AV_DICT_IGNORE_SUFFIX))) {
        if ((ret = id3v2_check_write_tag(id3, pb, t, ff_id3v2_tags, enc)) > 0) {
            id3->len += ret;
            continue;
        }
        if ((ret = id3v2_check_write_tag(id3, pb, t, id3->version == 3 ?
                                         ff_id3v2_3_tags : ff_id3v2_4_tags, enc)) > 0) {
            id3->len += ret;
            continue;
        }

        if ((ret = id3v2_put_priv(id3, pb, t->key, t->value)) > 0) {
            id3->len += ret;
            continue;
        } else if (ret < 0) {
            return ret;
        }


        if ((ret = id3v2_put_ttag(id3, pb, t->key, t->value, MKBETAG('T', 'X', 'X', 'X'), enc)) < 0)
            return ret;
        id3->len += ret;
    }

    return 0;
}
