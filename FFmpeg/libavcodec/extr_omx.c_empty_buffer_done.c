
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * pAppPrivate; scalar_t__ pOutputPortPrivate; } ;
struct TYPE_7__ {int free_in_buffers; int num_free_in_buffers; int input_cond; int input_mutex; scalar_t__ input_zerocopy; } ;
typedef TYPE_1__* OMX_PTR ;
typedef int OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef TYPE_2__ OMX_BUFFERHEADERTYPE ;
typedef TYPE_1__ OMXCodecContext ;
typedef int AVFrame ;


 int OMX_ErrorNone ;
 int append_buffer (int *,int *,int *,int ,TYPE_2__*) ;
 int av_frame_free (int **) ;
 int av_free (int *) ;

__attribute__((used)) static OMX_ERRORTYPE empty_buffer_done(OMX_HANDLETYPE component, OMX_PTR app_data,
                                       OMX_BUFFERHEADERTYPE *buffer)
{
    OMXCodecContext *s = app_data;
    if (s->input_zerocopy) {
        if (buffer->pAppPrivate) {
            if (buffer->pOutputPortPrivate)
                av_free(buffer->pAppPrivate);
            else
                av_frame_free((AVFrame**)&buffer->pAppPrivate);
            buffer->pAppPrivate = ((void*)0);
        }
    }
    append_buffer(&s->input_mutex, &s->input_cond,
                  &s->num_free_in_buffers, s->free_in_buffers, buffer);
    return OMX_ErrorNone;
}
