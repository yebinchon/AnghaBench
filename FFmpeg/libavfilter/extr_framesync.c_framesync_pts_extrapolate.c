
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int FFFrameSync ;



__attribute__((used)) static int64_t framesync_pts_extrapolate(FFFrameSync *fs, unsigned in,
                                         int64_t pts)
{

    return pts + 1;
}
