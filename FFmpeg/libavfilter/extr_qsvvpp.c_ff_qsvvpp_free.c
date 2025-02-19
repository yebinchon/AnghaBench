
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* frame_infos; struct TYPE_4__* ext_buffers; struct TYPE_4__* surface_ptrs_out; struct TYPE_4__* surface_ptrs_in; int out_frame_list; int in_frame_list; scalar_t__ session; } ;
typedef TYPE_1__ QSVVPPContext ;


 int MFXClose (scalar_t__) ;
 int MFXVideoVPP_Close (scalar_t__) ;
 int av_freep (TYPE_1__**) ;
 int clear_frame_list (int *) ;

int ff_qsvvpp_free(QSVVPPContext **vpp)
{
    QSVVPPContext *s = *vpp;

    if (!s)
        return 0;

    if (s->session) {
        MFXVideoVPP_Close(s->session);
        MFXClose(s->session);
    }


    clear_frame_list(&s->in_frame_list);
    clear_frame_list(&s->out_frame_list);
    av_freep(&s->surface_ptrs_in);
    av_freep(&s->surface_ptrs_out);
    av_freep(&s->ext_buffers);
    av_freep(&s->frame_infos);
    av_freep(vpp);

    return 0;
}
