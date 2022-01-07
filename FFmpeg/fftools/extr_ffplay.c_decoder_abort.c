
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue; int * decoder_tid; } ;
typedef int FrameQueue ;
typedef TYPE_1__ Decoder ;


 int SDL_WaitThread (int *,int *) ;
 int frame_queue_signal (int *) ;
 int packet_queue_abort (int ) ;
 int packet_queue_flush (int ) ;

__attribute__((used)) static void decoder_abort(Decoder *d, FrameQueue *fq)
{
    packet_queue_abort(d->queue);
    frame_queue_signal(fq);
    SDL_WaitThread(d->decoder_tid, ((void*)0));
    d->decoder_tid = ((void*)0);
    packet_queue_flush(d->queue);
}
