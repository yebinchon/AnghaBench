
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int device_ref; int frames_ref; int * frame_group; int * ctx; TYPE_1__* mpi; } ;
struct TYPE_4__ {int (* reset ) (int *) ;} ;
typedef TYPE_2__ RKMPPDecoder ;


 int av_buffer_unref (int *) ;
 int av_free (TYPE_2__*) ;
 int mpp_buffer_group_put (int *) ;
 int mpp_destroy (int *) ;
 int stub1 (int *) ;

__attribute__((used)) static void rkmpp_release_decoder(void *opaque, uint8_t *data)
{
    RKMPPDecoder *decoder = (RKMPPDecoder *)data;

    if (decoder->mpi) {
        decoder->mpi->reset(decoder->ctx);
        mpp_destroy(decoder->ctx);
        decoder->ctx = ((void*)0);
    }

    if (decoder->frame_group) {
        mpp_buffer_group_put(decoder->frame_group);
        decoder->frame_group = ((void*)0);
    }

    av_buffer_unref(&decoder->frames_ref);
    av_buffer_unref(&decoder->device_ref);

    av_free(decoder);
}
