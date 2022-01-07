
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int ENOSYS ;

int av_sdp_create(AVFormatContext *ac[], int n_files, char *buf, int size)
{
    return AVERROR(ENOSYS);
}
