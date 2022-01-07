
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int pbr_length; int pbr_delay; scalar_t__ pbr_buffer; } ;
typedef TYPE_1__ DCAXllDecoder ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int DCA_XLL_PBR_BUFFER_MAX ;
 int ENOMEM ;
 int ENOSPC ;
 scalar_t__ av_malloc (scalar_t__) ;
 int memcpy (scalar_t__,int *,int) ;

__attribute__((used)) static int copy_to_pbr(DCAXllDecoder *s, uint8_t *data, int size, int delay)
{
    if (size > DCA_XLL_PBR_BUFFER_MAX)
        return AVERROR(ENOSPC);

    if (!s->pbr_buffer && !(s->pbr_buffer = av_malloc(DCA_XLL_PBR_BUFFER_MAX + AV_INPUT_BUFFER_PADDING_SIZE)))
        return AVERROR(ENOMEM);

    memcpy(s->pbr_buffer, data, size);
    s->pbr_length = size;
    s->pbr_delay = delay;
    return 0;
}
