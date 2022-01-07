
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef enum rarch_movie_type { ____Placeholder_rarch_movie_type } rarch_movie_type ;
struct TYPE_6__ {size_t* frame_pos; size_t min_file_pos; int frame_mask; } ;
typedef TYPE_1__ bsv_movie_t ;


 int RARCH_MOVIE_PLAYBACK ;
 int bsv_movie_free (TYPE_1__*) ;
 int bsv_movie_init_playback (TYPE_1__*,char const*) ;
 int bsv_movie_init_record (TYPE_1__*,char const*) ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static bsv_movie_t *bsv_movie_init_internal(const char *path,
      enum rarch_movie_type type)
{
   size_t *frame_pos = ((void*)0);
   bsv_movie_t *handle = (bsv_movie_t*)calloc(1, sizeof(*handle));

   if (!handle)
      return ((void*)0);

   if (type == RARCH_MOVIE_PLAYBACK)
   {
      if (!bsv_movie_init_playback(handle, path))
         goto error;
   }
   else if (!bsv_movie_init_record(handle, path))
      goto error;



   if (!(frame_pos = (size_t*)calloc((1 << 20), sizeof(size_t))))
      goto error;

   handle->frame_pos = frame_pos;

   handle->frame_pos[0] = handle->min_file_pos;
   handle->frame_mask = (1 << 20) - 1;

   return handle;

error:
   bsv_movie_free(handle);
   return ((void*)0);
}
