
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int xll_sync_offset; scalar_t__ xll_delay_nframes; scalar_t__ xll_sync_present; } ;
struct TYPE_8__ {int frame_size; } ;
typedef TYPE_1__ DCAXllDecoder ;
typedef TYPE_2__ DCAExssAsset ;


 int AVERROR (int ) ;
 int EAGAIN ;
 int EINVAL ;
 int copy_to_pbr (TYPE_1__*,int *,int,scalar_t__) ;
 int parse_frame (TYPE_1__*,int *,int,TYPE_2__*) ;

__attribute__((used)) static int parse_frame_no_pbr(DCAXllDecoder *s, uint8_t *data, int size, DCAExssAsset *asset)
{
    int ret = parse_frame(s, data, size, asset);



    if (ret == AVERROR(EAGAIN) && asset->xll_sync_present && asset->xll_sync_offset < size) {

        data += asset->xll_sync_offset;
        size -= asset->xll_sync_offset;




        if (asset->xll_delay_nframes > 0) {
            if ((ret = copy_to_pbr(s, data, size, asset->xll_delay_nframes)) < 0)
                return ret;
            return AVERROR(EAGAIN);
        }


        ret = parse_frame(s, data, size, asset);
    }

    if (ret < 0)
        return ret;

    if (s->frame_size > size)
        return AVERROR(EINVAL);


    if (s->frame_size < size)
        if ((ret = copy_to_pbr(s, data + s->frame_size, size - s->frame_size, 0)) < 0)
            return ret;

    return 0;
}
