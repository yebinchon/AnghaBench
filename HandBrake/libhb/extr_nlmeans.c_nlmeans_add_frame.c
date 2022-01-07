
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int* range; size_t next_frame; TYPE_2__* frame; } ;
typedef TYPE_4__ hb_filter_private_t ;
struct TYPE_10__ {int fmt; int height; int width; } ;
struct TYPE_12__ {TYPE_3__ f; int s; TYPE_1__* plane; } ;
typedef TYPE_5__ hb_buffer_t ;
struct TYPE_9__ {int fmt; int height; int width; int s; int * plane; } ;
struct TYPE_8__ {int height; int stride; int width; int data; } ;


 int nlmeans_alloc (int ,int ,int ,int ,int *,int const) ;

__attribute__((used)) static void nlmeans_add_frame(hb_filter_private_t *pv, hb_buffer_t *buf)
{
    for (int c = 0; c < 3; c++)
    {

        const int border = ((pv->range[c] + 2) / 2 + 15) / 16 * 16;
        nlmeans_alloc(buf->plane[c].data,
                      buf->plane[c].width,
                      buf->plane[c].stride,
                      buf->plane[c].height,
                      &pv->frame[pv->next_frame].plane[c],
                      border);
        pv->frame[pv->next_frame].s = buf->s;
        pv->frame[pv->next_frame].width = buf->f.width;
        pv->frame[pv->next_frame].height = buf->f.height;
        pv->frame[pv->next_frame].fmt = buf->f.fmt;
    }
    pv->next_frame++;
}
