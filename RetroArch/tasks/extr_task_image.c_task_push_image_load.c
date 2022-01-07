
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int supports_rgba; int * pixels; scalar_t__ height; scalar_t__ width; } ;
struct nbio_image_handle {int is_blocking; int is_blocking_on_processing; int is_finished; unsigned int upscale_threshold; int type; TYPE_1__ ti; int * handle; scalar_t__ size; scalar_t__ frame_duration; scalar_t__ processing_final_state; int status; } ;
struct TYPE_8__ {int is_finished; void* user_data; int callback; int cleanup; int handler; struct TYPE_8__* state; struct nbio_image_handle* data; int type; int path; scalar_t__ status_flags; int * cb; int * msg_queue; int * handle; scalar_t__ pos_increment; int status; } ;
typedef TYPE_2__ retro_task_t ;
typedef int retro_task_callback_t ;
typedef TYPE_2__ nbio_handle_t ;


 int BIT32_SET (scalar_t__,int ) ;
 int IMAGE_STATUS_WAIT ;
 int IMAGE_TYPE_BMP ;
 int IMAGE_TYPE_JPEG ;
 int IMAGE_TYPE_NONE ;
 int IMAGE_TYPE_PNG ;
 int IMAGE_TYPE_TGA ;
 int NBIO_FLAG_IMAGE_SUPPORTS_RGBA ;
 int NBIO_STATUS_INIT ;
 int NBIO_TYPE_BMP ;
 int NBIO_TYPE_JPEG ;
 int NBIO_TYPE_NONE ;
 int NBIO_TYPE_PNG ;
 int NBIO_TYPE_TGA ;
 int cb_nbio_image_thumbnail ;
 int free (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int strdup (char const*) ;
 scalar_t__ strstr (char const*,char*) ;
 int task_file_load_handler ;
 int task_image_load_free ;
 TYPE_2__* task_init () ;
 int task_queue_push (TYPE_2__*) ;

bool task_push_image_load(const char *fullpath,
      bool supports_rgba, unsigned upscale_threshold,
      retro_task_callback_t cb, void *user_data)
{
   nbio_handle_t *nbio = ((void*)0);
   struct nbio_image_handle *image = ((void*)0);
   retro_task_t *t = task_init();

   if (!t)
      return 0;

   nbio = (nbio_handle_t*)malloc(sizeof(*nbio));

   if (!nbio)
   {
      free(t);
      return 0;
   }

   nbio->type = NBIO_TYPE_NONE;
   nbio->is_finished = 0;
   nbio->status = NBIO_STATUS_INIT;
   nbio->pos_increment = 0;
   nbio->status_flags = 0;
   nbio->data = ((void*)0);
   nbio->handle = ((void*)0);
   nbio->msg_queue = ((void*)0);
   nbio->cb = &cb_nbio_image_thumbnail;

   if (supports_rgba)
      BIT32_SET(nbio->status_flags, NBIO_FLAG_IMAGE_SUPPORTS_RGBA);

   image = (struct nbio_image_handle*)malloc(sizeof(*image));
   if (!image)
   {
      free(nbio);
      free(t);
      return 0;
   }

   nbio->path = strdup(fullpath);

   image->type = IMAGE_TYPE_NONE;
   image->status = IMAGE_STATUS_WAIT;
   image->is_blocking = 0;
   image->is_blocking_on_processing = 0;
   image->is_finished = 0;
   image->processing_final_state = 0;
   image->frame_duration = 0;
   image->size = 0;
   image->upscale_threshold = upscale_threshold;
   image->handle = ((void*)0);

   image->ti.width = 0;
   image->ti.height = 0;
   image->ti.pixels = ((void*)0);

   image->ti.supports_rgba = 0;

   if (strstr(fullpath, ".png"))
   {
      nbio->type = NBIO_TYPE_PNG;
      image->type = IMAGE_TYPE_PNG;
   }
   else if (strstr(fullpath, ".jpeg")
         || strstr(fullpath, ".jpg"))
   {
      nbio->type = NBIO_TYPE_JPEG;
      image->type = IMAGE_TYPE_JPEG;
   }
   else if (strstr(fullpath, ".bmp"))
   {
      nbio->type = NBIO_TYPE_BMP;
      image->type = IMAGE_TYPE_BMP;
   }
   else if (strstr(fullpath, ".tga"))
   {
      nbio->type = NBIO_TYPE_TGA;
      image->type = IMAGE_TYPE_TGA;
   }

   nbio->data = (struct nbio_image_handle*)image;

   t->state = nbio;
   t->handler = task_file_load_handler;
   t->cleanup = task_image_load_free;
   t->callback = cb;
   t->user_data = user_data;

   task_queue_push(t);

   return 1;
}
