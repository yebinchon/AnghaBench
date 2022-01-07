
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ context; } ;
typedef TYPE_1__ stbi__write_context ;
typedef int FILE ;


 int fclose (int *) ;

__attribute__((used)) static void stbi__end_write_file(stbi__write_context *s)
{
   fclose((FILE *)s->context);
}
