
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_6__ {int tv_nsec; int tv_sec; } ;
struct pipe {TYPE_2__ st_ctimespec; TYPE_1__ st_mtimespec; TYPE_3__ st_atimespec; } ;


 int PIPE_ATIME ;
 int PIPE_CTIME ;
 int PIPE_MTIME ;
 int nanotime (struct timespec*) ;

__attribute__((used)) static void
pipe_touch(struct pipe *tpipe, int touch)
{
 struct timespec now;

 nanotime(&now);

 if (touch & PIPE_ATIME) {
  tpipe->st_atimespec.tv_sec = now.tv_sec;
  tpipe->st_atimespec.tv_nsec = now.tv_nsec;
 }

 if (touch & PIPE_MTIME) {
  tpipe->st_mtimespec.tv_sec = now.tv_sec;
  tpipe->st_mtimespec.tv_nsec = now.tv_nsec;
 }

 if (touch & PIPE_CTIME) {
  tpipe->st_ctimespec.tv_sec = now.tv_sec;
  tpipe->st_ctimespec.tv_nsec = now.tv_nsec;
 }
}
