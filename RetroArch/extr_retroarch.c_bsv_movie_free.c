
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* frame_pos; struct TYPE_5__* state; struct TYPE_5__* file; } ;
typedef TYPE_1__ bsv_movie_t ;


 int free (TYPE_1__*) ;
 int intfstream_close (TYPE_1__*) ;

__attribute__((used)) static void bsv_movie_free(bsv_movie_t *handle)
{
   if (!handle)
      return;

   intfstream_close(handle->file);
   free(handle->file);

   free(handle->state);
   free(handle->frame_pos);
   free(handle);
}
