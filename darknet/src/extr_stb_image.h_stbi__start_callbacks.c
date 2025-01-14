
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stbi_io_callbacks ;
struct TYPE_4__ {int buflen; int read_from_callbacks; int img_buffer_end; int img_buffer_original_end; int buffer_start; int img_buffer_original; void* io_user_data; int io; } ;
typedef TYPE_1__ stbi__context ;


 int stbi__refill_buffer (TYPE_1__*) ;

__attribute__((used)) static void stbi__start_callbacks(stbi__context *s, stbi_io_callbacks *c, void *user)
{
   s->io = *c;
   s->io_user_data = user;
   s->buflen = sizeof(s->buffer_start);
   s->read_from_callbacks = 1;
   s->img_buffer_original = s->buffer_start;
   stbi__refill_buffer(s);
   s->img_buffer_original_end = s->img_buffer_end;
}
