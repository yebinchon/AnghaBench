
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbio_stdio_t {scalar_t__ op; struct nbio_stdio_t* data; int * f; } ;


 int abort () ;
 int fclose (int *) ;
 int free (struct nbio_stdio_t*) ;

__attribute__((used)) static void nbio_stdio_free(void *data)
{
   struct nbio_stdio_t *handle = (struct nbio_stdio_t*)data;
   if (!handle)
      return;
   if (handle->op >= 0)
      abort();
   fclose(handle->f);
   free(handle->data);

   handle->f = ((void*)0);
   handle->data = ((void*)0);
   free(handle);
}
