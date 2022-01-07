
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; } ;


 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_M2M ;
 int V4L2_CAP_VIDEO_OUTPUT ;

__attribute__((used)) static inline int v4l2_splane_video(struct v4l2_capability *cap)
{
    if (cap->capabilities & (V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OUTPUT) &&
        cap->capabilities & V4L2_CAP_STREAMING)
        return 1;

    if (cap->capabilities & V4L2_CAP_VIDEO_M2M)
        return 1;

    return 0;
}
