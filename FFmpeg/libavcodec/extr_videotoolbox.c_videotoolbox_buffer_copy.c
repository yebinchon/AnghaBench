
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int bitstream_size; void* bitstream; int allocated_size; } ;
typedef TYPE_1__ VTContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 void* av_fast_realloc (void*,int *,int ) ;
 int memcpy (void*,int const*,int ) ;

__attribute__((used)) static int videotoolbox_buffer_copy(VTContext *vtctx,
                                    const uint8_t *buffer,
                                    uint32_t size)
{
    void *tmp;

    tmp = av_fast_realloc(vtctx->bitstream,
                         &vtctx->allocated_size,
                         size);

    if (!tmp)
        return AVERROR(ENOMEM);

    vtctx->bitstream = tmp;
    memcpy(vtctx->bitstream, buffer, size);
    vtctx->bitstream_size = size;

    return 0;
}
