
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** valid_hw_formats; void** valid_sw_formats; } ;
typedef TYPE_1__ AVHWFramesConstraints ;
typedef int AVHWDeviceContext ;


 int AVERROR (int ) ;
 void* AV_PIX_FMT_CUDA ;
 void* AV_PIX_FMT_NONE ;
 int ENOMEM ;
 size_t FF_ARRAY_ELEMS (void**) ;
 void* av_malloc_array (int,int) ;
 void** supported_formats ;

__attribute__((used)) static int cuda_frames_get_constraints(AVHWDeviceContext *ctx,
                                       const void *hwconfig,
                                       AVHWFramesConstraints *constraints)
{
    int i;

    constraints->valid_sw_formats = av_malloc_array(FF_ARRAY_ELEMS(supported_formats) + 1,
                                                    sizeof(*constraints->valid_sw_formats));
    if (!constraints->valid_sw_formats)
        return AVERROR(ENOMEM);

    for (i = 0; i < FF_ARRAY_ELEMS(supported_formats); i++)
        constraints->valid_sw_formats[i] = supported_formats[i];
    constraints->valid_sw_formats[FF_ARRAY_ELEMS(supported_formats)] = AV_PIX_FMT_NONE;

    constraints->valid_hw_formats = av_malloc_array(2, sizeof(*constraints->valid_hw_formats));
    if (!constraints->valid_hw_formats)
        return AVERROR(ENOMEM);

    constraints->valid_hw_formats[0] = AV_PIX_FMT_CUDA;
    constraints->valid_hw_formats[1] = AV_PIX_FMT_NONE;

    return 0;
}
