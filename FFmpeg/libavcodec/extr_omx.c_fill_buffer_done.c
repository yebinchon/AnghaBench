
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int done_out_buffers; int num_done_out_buffers; int output_cond; int output_mutex; } ;
typedef TYPE_1__* OMX_PTR ;
typedef int OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef int OMX_BUFFERHEADERTYPE ;
typedef TYPE_1__ OMXCodecContext ;


 int OMX_ErrorNone ;
 int append_buffer (int *,int *,int *,int ,int *) ;

__attribute__((used)) static OMX_ERRORTYPE fill_buffer_done(OMX_HANDLETYPE component, OMX_PTR app_data,
                                      OMX_BUFFERHEADERTYPE *buffer)
{
    OMXCodecContext *s = app_data;
    append_buffer(&s->output_mutex, &s->output_cond,
                  &s->num_done_out_buffers, s->done_out_buffers, buffer);
    return OMX_ErrorNone;
}
