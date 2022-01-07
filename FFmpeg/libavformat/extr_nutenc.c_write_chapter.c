
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int start; int end; int metadata; } ;
struct TYPE_13__ {int value; int key; } ;
struct TYPE_12__ {TYPE_2__* chapter; TYPE_1__* avf; } ;
struct TYPE_11__ {int time_base; } ;
struct TYPE_10__ {TYPE_5__** chapters; } ;
typedef TYPE_3__ NUTContext ;
typedef int AVIOContext ;
typedef TYPE_4__ AVDictionaryEntry ;
typedef TYPE_5__ AVChapter ;


 int AV_DICT_IGNORE_SUFFIX ;
 scalar_t__ add_info (int *,int ,int ) ;
 TYPE_4__* av_dict_get (int ,char*,TYPE_4__*,int ) ;
 int av_freep (int **) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_open_dyn_buf (int **) ;
 int avio_write (int *,int *,int) ;
 int ff_put_v (int *,int) ;
 int put_s (int *,int) ;
 int put_tt (TYPE_3__*,int ,int *,int) ;

__attribute__((used)) static int write_chapter(NUTContext *nut, AVIOContext *bc, int id)
{
    AVIOContext *dyn_bc;
    uint8_t *dyn_buf = ((void*)0);
    AVDictionaryEntry *t = ((void*)0);
    AVChapter *ch = nut->avf->chapters[id];
    int ret, dyn_size, count = 0;

    ret = avio_open_dyn_buf(&dyn_bc);
    if (ret < 0)
        return ret;

    ff_put_v(bc, 0);
    put_s(bc, id + 1);
    put_tt(nut, nut->chapter[id].time_base, bc, ch->start);
    ff_put_v(bc, ch->end - ch->start);

    while ((t = av_dict_get(ch->metadata, "", t, AV_DICT_IGNORE_SUFFIX)))
        count += add_info(dyn_bc, t->key, t->value);

    ff_put_v(bc, count);

    dyn_size = avio_close_dyn_buf(dyn_bc, &dyn_buf);
    avio_write(bc, dyn_buf, dyn_size);
    av_freep(&dyn_buf);
    return 0;
}
