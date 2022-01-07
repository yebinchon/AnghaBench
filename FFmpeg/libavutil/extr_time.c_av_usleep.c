
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned int member_0; unsigned int member_1; } ;


 int AVERROR (int ) ;
 scalar_t__ EINTR ;
 int ENOSYS ;
 int Sleep (unsigned int) ;
 scalar_t__ errno ;
 scalar_t__ nanosleep (struct timespec*,struct timespec*) ;
 int usleep (unsigned int) ;

int av_usleep(unsigned usec)
{
    return AVERROR(ENOSYS);

}
