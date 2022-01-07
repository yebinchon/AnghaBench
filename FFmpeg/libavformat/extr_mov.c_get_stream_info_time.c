
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ sidx_pts; scalar_t__ first_tfra_pts; scalar_t__ tfdt_dts; } ;
typedef TYPE_1__ MOVFragmentStreamInfo ;


 scalar_t__ AV_NOPTS_VALUE ;
 int av_assert0 (TYPE_1__*) ;

__attribute__((used)) static int64_t get_stream_info_time(MOVFragmentStreamInfo * frag_stream_info)
{
    av_assert0(frag_stream_info);
    if (frag_stream_info->sidx_pts != AV_NOPTS_VALUE)
        return frag_stream_info->sidx_pts;
    if (frag_stream_info->first_tfra_pts != AV_NOPTS_VALUE)
        return frag_stream_info->first_tfra_pts;
    return frag_stream_info->tfdt_dts;
}
