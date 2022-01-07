
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int value; int key; } ;
struct TYPE_9__ {int metadata; } ;
struct TYPE_8__ {TYPE_2__* avf; } ;
typedef TYPE_1__ NUTContext ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 scalar_t__ add_info (int *,int ,int ) ;
 TYPE_3__* av_dict_get (int ,char*,TYPE_3__*,int ) ;
 int av_free (int *) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 int avio_write (int *,int *,int) ;
 int ff_put_v (int *,int) ;
 int ff_standardize_creation_time (TYPE_2__*) ;

__attribute__((used)) static int write_globalinfo(NUTContext *nut, AVIOContext *bc)
{
    AVFormatContext *s = nut->avf;
    AVDictionaryEntry *t = ((void*)0);
    AVIOContext *dyn_bc;
    uint8_t *dyn_buf = ((void*)0);
    int count = 0, dyn_size;
    int ret = avio_open_dyn_buf(&dyn_bc);
    if (ret < 0)
        return ret;

    ff_standardize_creation_time(s);
    while ((t = av_dict_get(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX)))
        count += add_info(dyn_bc, t->key, t->value);

    ff_put_v(bc, 0);
    ff_put_v(bc, 0);
    ff_put_v(bc, 0);
    ff_put_v(bc, 0);

    ff_put_v(bc, count);

    dyn_size = avio_close_dyn_buf(dyn_bc, &dyn_buf);
    avio_write(bc, dyn_buf, dyn_size);
    av_free(dyn_buf);
    return 0;
}
