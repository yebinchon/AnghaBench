
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ needs_realloc; } ;
typedef TYPE_1__ Picture ;
typedef int AVCodecContext ;


 int MAX_PICTURE_COUNT ;
 int ff_free_picture_tables (TYPE_1__*) ;
 int ff_mpeg_unref_picture (int *,TYPE_1__*) ;
 int find_unused_picture (int *,TYPE_1__*,int) ;

int ff_find_unused_picture(AVCodecContext *avctx, Picture *picture, int shared)
{
    int ret = find_unused_picture(avctx, picture, shared);

    if (ret >= 0 && ret < MAX_PICTURE_COUNT) {
        if (picture[ret].needs_realloc) {
            picture[ret].needs_realloc = 0;
            ff_free_picture_tables(&picture[ret]);
            ff_mpeg_unref_picture(avctx, &picture[ret]);
        }
    }
    return ret;
}
