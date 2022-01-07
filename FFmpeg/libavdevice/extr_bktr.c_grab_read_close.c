
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int caddr_t ;
struct TYPE_4__ {int tuner_fd; int video_fd; } ;
typedef TYPE_1__ VideoData ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int AUDIO_MUTE ;
 int BT848_SAUDIO ;
 int METEORCAPTUR ;
 int METEOR_CAP_STOP_CONT ;
 int close (int ) ;
 int ioctl (int ,int ,int*) ;
 int munmap (int ,int ) ;
 scalar_t__ video_buf ;
 int video_buf_size ;

__attribute__((used)) static int grab_read_close(AVFormatContext *s1)
{
    VideoData *s = s1->priv_data;
    int c;

    c = METEOR_CAP_STOP_CONT;
    ioctl(s->video_fd, METEORCAPTUR, &c);
    close(s->video_fd);

    c = AUDIO_MUTE;
    ioctl(s->tuner_fd, BT848_SAUDIO, &c);
    close(s->tuner_fd);

    munmap((caddr_t)video_buf, video_buf_size);

    return 0;
}
