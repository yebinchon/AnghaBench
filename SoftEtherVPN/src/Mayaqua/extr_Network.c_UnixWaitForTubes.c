
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
typedef int UINT ;
struct TYPE_5__ {TYPE_1__* SockEvent; } ;
struct TYPE_4__ {int pipe_read; scalar_t__ current_pipe_data; } ;
typedef TYPE_2__ TUBE ;


 int Free (int*) ;
 int MAX_SIZE ;
 int UnixSelectInner (int,int*,int ,int *,int) ;
 int* ZeroMalloc (int) ;
 int read (int,char*,int) ;

void UnixWaitForTubes(TUBE **tubes, UINT num, UINT timeout)
{
 int *fds;
 UINT i;
 char tmp[MAX_SIZE];
 bool any_of_tubes_are_readable = 0;

 fds = ZeroMalloc(sizeof(int) * num);

 for (i = 0;i < num;i++)
 {
  fds[i] = tubes[i]->SockEvent->pipe_read;

  if (tubes[i]->SockEvent->current_pipe_data != 0)
  {
   any_of_tubes_are_readable = 1;
  }
 }

 if (any_of_tubes_are_readable == 0)
 {
  UnixSelectInner(num, fds, 0, ((void*)0), timeout);
 }

 for (i = 0;i < num;i++)
 {
  int fd = fds[i];
  int readret;

  tubes[i]->SockEvent->current_pipe_data = 0;

  do
  {
   readret = read(fd, tmp, sizeof(tmp));
  }
  while (readret >= 1);
 }

 Free(fds);
}
