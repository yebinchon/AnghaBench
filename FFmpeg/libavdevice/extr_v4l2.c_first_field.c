
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct video_data {int fd; } ;


 int V4L2_STD_NTSC ;
 int VIDIOC_G_STD ;
 int v4l2_ioctl (int ,int ,int*) ;

__attribute__((used)) static int first_field(const struct video_data *s)
{
    int res;
    v4l2_std_id std;

    res = v4l2_ioctl(s->fd, VIDIOC_G_STD, &std);
    if (res < 0)
        return 0;
    if (std & V4L2_STD_NTSC)
        return 0;

    return 1;
}
