
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ebml_master ;
struct TYPE_11__ {int key; } ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int tags_bc; } ;
typedef TYPE_1__ MatroskaMuxContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_3__* av_dict_get (int *,char*,TYPE_3__*,int ) ;
 int end_ebml_master (int ,int ) ;
 scalar_t__ mkv_check_tag_name (int ,int ) ;
 int mkv_write_simpletag (int ,TYPE_3__*) ;
 int mkv_write_tag_targets (TYPE_2__*,int ,unsigned int,int *) ;

__attribute__((used)) static int mkv_write_tag(AVFormatContext *s, AVDictionary *m, uint32_t elementid,
                         unsigned int uid)
{
    MatroskaMuxContext *mkv = s->priv_data;
    ebml_master tag;
    int ret;
    AVDictionaryEntry *t = ((void*)0);

    ret = mkv_write_tag_targets(s, elementid, uid, &tag);
    if (ret < 0)
        return ret;

    while ((t = av_dict_get(m, "", t, AV_DICT_IGNORE_SUFFIX))) {
        if (mkv_check_tag_name(t->key, elementid)) {
            ret = mkv_write_simpletag(mkv->tags_bc, t);
            if (ret < 0)
                return ret;
        }
    }

    end_ebml_master(mkv->tags_bc, tag);
    return 0;
}
