
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ codec_tag; int coded_width; int coded_height; } ;
struct TYPE_8__ {int dsf; int video_stype; unsigned int frame_size; } ;
typedef TYPE_1__ AVDVProfile ;
typedef TYPE_2__ AVCodecContext ;


 scalar_t__ AV_RL32 (char*) ;
 unsigned int DV_PROFILE_BYTES ;
 int FF_ARRAY_ELEMS (TYPE_1__ const*) ;
 TYPE_1__ const* dv_profiles ;

const AVDVProfile* ff_dv_frame_profile(AVCodecContext* codec, const AVDVProfile *sys,
                                       const uint8_t *frame, unsigned buf_size)
{
    return ((void*)0);
}
