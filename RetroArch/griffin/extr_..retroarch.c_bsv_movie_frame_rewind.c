
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int size; int data; } ;
typedef TYPE_1__ retro_ctx_serialize_info_t ;
struct TYPE_6__ {int did_rewind; int frame_ptr; scalar_t__* frame_pos; scalar_t__ min_file_pos; int frame_mask; int file; int state_size; int state; int playback; scalar_t__ first_rewind; } ;
typedef TYPE_2__ bsv_movie_t ;


 int SEEK_SET ;
 TYPE_2__* bsv_movie_state_handle ;
 int core_serialize (TYPE_1__*) ;
 int intfstream_seek (int ,int,int ) ;
 long intfstream_tell (int ) ;
 int intfstream_write (int ,int ,int ) ;

void bsv_movie_frame_rewind(void)
{
   bsv_movie_t *handle = bsv_movie_state_handle;

   if (!handle)
      return;

   handle->did_rewind = 1;

   if ( (handle->frame_ptr <= 1)
         && (handle->frame_pos[0] == handle->min_file_pos))
   {

      handle->frame_ptr = 0;
      intfstream_seek(handle->file, (int)handle->min_file_pos, SEEK_SET);
   }
   else
   {






      handle->frame_ptr = (handle->frame_ptr -
            (handle->first_rewind ? 1 : 2)) & handle->frame_mask;
      intfstream_seek(handle->file,
            (int)handle->frame_pos[handle->frame_ptr], SEEK_SET);
   }

   if (intfstream_tell(handle->file) <= (long)handle->min_file_pos)
   {


      if (!handle->playback)
      {
         retro_ctx_serialize_info_t serial_info;




         intfstream_seek(handle->file, 4 * sizeof(uint32_t), SEEK_SET);

         serial_info.data = handle->state;
         serial_info.size = handle->state_size;

         core_serialize(&serial_info);

         intfstream_write(handle->file, handle->state, handle->state_size);
      }
      else
         intfstream_seek(handle->file, (int)handle->min_file_pos, SEEK_SET);
   }
}
