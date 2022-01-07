
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int pbr_length; scalar_t__ pbr_buffer; scalar_t__ pbr_delay; scalar_t__ frame_size; } ;
typedef TYPE_1__ DCAXllDecoder ;
typedef int DCAExssAsset ;


 int AVERROR (int ) ;
 int DCA_XLL_PBR_BUFFER_MAX ;
 int EAGAIN ;
 int EINVAL ;
 int ENOSPC ;
 int clear_pbr (TYPE_1__*) ;
 int memcpy (scalar_t__,int *,int) ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int parse_frame (TYPE_1__*,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static int parse_frame_pbr(DCAXllDecoder *s, uint8_t *data, int size, DCAExssAsset *asset)
{
    int ret;

    if (size > DCA_XLL_PBR_BUFFER_MAX - s->pbr_length) {
        ret = AVERROR(ENOSPC);
        goto fail;
    }

    memcpy(s->pbr_buffer + s->pbr_length, data, size);
    s->pbr_length += size;


    if (s->pbr_delay > 0 && --s->pbr_delay)
        return AVERROR(EAGAIN);

    if ((ret = parse_frame(s, s->pbr_buffer, s->pbr_length, asset)) < 0)
        goto fail;

    if (s->frame_size > s->pbr_length) {
        ret = AVERROR(EINVAL);
        goto fail;
    }

    if (s->frame_size == s->pbr_length) {

        clear_pbr(s);
    } else {
        s->pbr_length -= s->frame_size;
        memmove(s->pbr_buffer, s->pbr_buffer + s->frame_size, s->pbr_length);
    }

    return 0;

fail:


    clear_pbr(s);
    return ret;
}
