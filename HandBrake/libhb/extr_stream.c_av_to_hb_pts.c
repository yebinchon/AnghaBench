
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 scalar_t__ AV_NOPTS_VALUE ;

__attribute__((used)) static int64_t av_to_hb_pts( int64_t pts, double conv_factor, int64_t offset )
{
    if ( pts == AV_NOPTS_VALUE )
        return AV_NOPTS_VALUE;
    return (int64_t)( (double)pts * conv_factor ) - offset;
}
