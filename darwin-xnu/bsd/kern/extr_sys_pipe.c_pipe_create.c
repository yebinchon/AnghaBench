
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe {int dummy; } ;


 int ENOMEM ;
 int PIPE_ATIME ;
 int PIPE_CTIME ;
 int PIPE_MTIME ;
 int bzero (struct pipe*,int) ;
 int pipe_touch (struct pipe*,int) ;
 int pipe_zone ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static int
pipe_create(struct pipe **cpipep)
{
 struct pipe *cpipe;
 cpipe = (struct pipe *)zalloc(pipe_zone);

 if ((*cpipep = cpipe) == ((void*)0))
  return (ENOMEM);





 bzero(cpipe, sizeof *cpipe);



 pipe_touch(cpipe, PIPE_ATIME | PIPE_MTIME | PIPE_CTIME);

 return (0);
}
