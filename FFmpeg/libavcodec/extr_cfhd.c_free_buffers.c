
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ** l_h; int ** subband; int idwt_tmp; int idwt_buf; } ;
struct TYPE_4__ {scalar_t__ a_width; scalar_t__ a_height; TYPE_3__* plane; } ;
typedef TYPE_1__ CFHDContext ;


 int FF_ARRAY_ELEMS (TYPE_3__*) ;
 int av_freep (int *) ;

__attribute__((used)) static void free_buffers(CFHDContext *s)
{
    int i, j;

    for (i = 0; i < FF_ARRAY_ELEMS(s->plane); i++) {
        av_freep(&s->plane[i].idwt_buf);
        av_freep(&s->plane[i].idwt_tmp);

        for (j = 0; j < 9; j++)
            s->plane[i].subband[j] = ((void*)0);

        for (j = 0; j < 8; j++)
            s->plane[i].l_h[j] = ((void*)0);
    }
    s->a_height = 0;
    s->a_width = 0;
}
