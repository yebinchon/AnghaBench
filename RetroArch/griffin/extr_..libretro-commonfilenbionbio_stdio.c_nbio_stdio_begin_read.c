
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_stdio_t {scalar_t__ op; scalar_t__ progress; int f; } ;


 scalar_t__ NBIO_READ ;
 int SEEK_SET ;
 int abort () ;
 int fseek (int ,int ,int ) ;

__attribute__((used)) static void nbio_stdio_begin_read(void *data)
{
   struct nbio_stdio_t *handle = (struct nbio_stdio_t*)data;
   if (!handle)
      return;

   if (handle->op >= 0)
      abort();

   fseek(handle->f, 0, SEEK_SET);

   handle->op = NBIO_READ;
   handle->progress = 0;
}
