
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int size; scalar_t__ cnt; scalar_t__ in; scalar_t__ out; int * buffer; } ;
struct pipe {TYPE_1__ pipe_buffer; } ;


 int memcpy (int *,int *,unsigned int) ;
 int pipe_free_kmem (struct pipe*) ;
 int pipespace (struct pipe*,int) ;

__attribute__((used)) static int
expand_pipespace(struct pipe *p, int target_size)
{
 struct pipe tmp, oldpipe;
 int error;
 tmp.pipe_buffer.buffer = 0;

 if (p->pipe_buffer.size >= (unsigned) target_size) {
  return 0;
 }


 error = pipespace(&tmp, target_size);
 if (error != 0)
  return (error);

 oldpipe.pipe_buffer.buffer = p->pipe_buffer.buffer;
 oldpipe.pipe_buffer.size = p->pipe_buffer.size;

 memcpy(tmp.pipe_buffer.buffer, p->pipe_buffer.buffer, p->pipe_buffer.size);
 if (p->pipe_buffer.cnt > 0 && p->pipe_buffer.in <= p->pipe_buffer.out ){

  memcpy(&tmp.pipe_buffer.buffer[p->pipe_buffer.size], p->pipe_buffer.buffer, p->pipe_buffer.size);
  p->pipe_buffer.in += p->pipe_buffer.size;
 }

 p->pipe_buffer.buffer = tmp.pipe_buffer.buffer;
 p->pipe_buffer.size = tmp.pipe_buffer.size;


 pipe_free_kmem(&oldpipe);
 return 0;
}
