
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nbio_image_handle {int * cb; int * handle; int type; } ;
struct TYPE_3__ {int * handle; int * data; int * path; } ;
typedef TYPE_1__ nbio_handle_t ;


 int free (int *) ;
 int image_transfer_free (int *,int ) ;
 int nbio_free (int *) ;
 int string_is_empty (int *) ;

__attribute__((used)) static void task_image_cleanup(nbio_handle_t *nbio)
{
   struct nbio_image_handle *image = (struct nbio_image_handle*)nbio->data;

   if (image)
   {
      image_transfer_free(image->handle, image->type);

      image->handle = ((void*)0);
      image->cb = ((void*)0);
   }
   if (!string_is_empty(nbio->path))
      free(nbio->path);
   if (nbio->data)
      free(nbio->data);
   nbio_free(nbio->handle);
   nbio->path = ((void*)0);
   nbio->data = ((void*)0);
   nbio->handle = ((void*)0);
}
