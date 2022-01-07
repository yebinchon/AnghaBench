
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbi_write_func ;
struct TYPE_3__ {void* context; int * func; } ;
typedef TYPE_1__ stbi__write_context ;



__attribute__((used)) static void stbi__start_write_callbacks(stbi__write_context *s, stbi_write_func *c, void *context)
{
   s->func = c;
   s->context = context;
}
