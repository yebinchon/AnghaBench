
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int abort_request; scalar_t__ audio_stream; scalar_t__ video_stream; scalar_t__ subtitle_stream; scalar_t__ sub_texture; scalar_t__ vid_texture; scalar_t__ vis_texture; struct TYPE_5__* filename; int sub_convert_ctx; int img_convert_ctx; int continue_read_thread; int subpq; int sampq; int pictq; int subtitleq; int audioq; int videoq; int ic; int read_tid; } ;
typedef TYPE_1__ VideoState ;


 int SDL_DestroyCond (int ) ;
 int SDL_DestroyTexture (scalar_t__) ;
 int SDL_WaitThread (int ,int *) ;
 int av_free (TYPE_1__*) ;
 int avformat_close_input (int *) ;
 int frame_queue_destory (int *) ;
 int packet_queue_destroy (int *) ;
 int stream_component_close (TYPE_1__*,scalar_t__) ;
 int sws_freeContext (int ) ;

__attribute__((used)) static void stream_close(VideoState *is)
{

    is->abort_request = 1;
    SDL_WaitThread(is->read_tid, ((void*)0));


    if (is->audio_stream >= 0)
        stream_component_close(is, is->audio_stream);
    if (is->video_stream >= 0)
        stream_component_close(is, is->video_stream);
    if (is->subtitle_stream >= 0)
        stream_component_close(is, is->subtitle_stream);

    avformat_close_input(&is->ic);

    packet_queue_destroy(&is->videoq);
    packet_queue_destroy(&is->audioq);
    packet_queue_destroy(&is->subtitleq);


    frame_queue_destory(&is->pictq);
    frame_queue_destory(&is->sampq);
    frame_queue_destory(&is->subpq);
    SDL_DestroyCond(is->continue_read_thread);
    sws_freeContext(is->img_convert_ctx);
    sws_freeContext(is->sub_convert_ctx);
    av_free(is->filename);
    if (is->vis_texture)
        SDL_DestroyTexture(is->vis_texture);
    if (is->vid_texture)
        SDL_DestroyTexture(is->vid_texture);
    if (is->sub_texture)
        SDL_DestroyTexture(is->sub_texture);
    av_free(is);
}
