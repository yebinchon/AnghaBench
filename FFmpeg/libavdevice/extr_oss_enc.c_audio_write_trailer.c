
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv_data; } ;
typedef int OSSAudioData ;
typedef TYPE_1__ AVFormatContext ;


 int ff_oss_audio_close (int *) ;

__attribute__((used)) static int audio_write_trailer(AVFormatContext *s1)
{
    OSSAudioData *s = s1->priv_data;

    ff_oss_audio_close(s);
    return 0;
}
