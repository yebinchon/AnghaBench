
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nbio_image_handle {size_t size; unsigned int frame_duration; int is_blocking; int is_finished; int type; void* handle; int * cb; int status; } ;
struct TYPE_6__ {float video_refresh_rate; } ;
struct TYPE_7__ {TYPE_1__ floats; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {int is_finished; int handle; scalar_t__ data; } ;
typedef TYPE_3__ nbio_handle_t ;


 int IMAGE_STATUS_TRANSFER ;
 int cb_image_thumbnail ;
 TYPE_2__* config_get_ptr () ;
 int * image_transfer_new (int ) ;
 int image_transfer_set_buffer_ptr (void*,int ,void*,size_t) ;
 int image_transfer_start (void*,int ) ;
 void* nbio_get_ptr (int ,size_t*) ;
 int task_image_cleanup (TYPE_3__*) ;

__attribute__((used)) static int cb_nbio_image_thumbnail(void *data, size_t len)
{
   void *ptr = ((void*)0);
   nbio_handle_t *nbio = (nbio_handle_t*)data;
   struct nbio_image_handle *image = nbio ? (struct nbio_image_handle*)nbio->data : ((void*)0);
   void *handle = image ? image_transfer_new(image->type) : ((void*)0);
   settings_t *settings = config_get_ptr();
   float refresh_rate = 0.0f;

   if (!handle)
      return -1;

   image->status = IMAGE_STATUS_TRANSFER;
   image->handle = handle;
   image->cb = &cb_image_thumbnail;

   ptr = nbio_get_ptr(nbio->handle, &len);

   image_transfer_set_buffer_ptr(image->handle, image->type, ptr, len);


   image->size = len;


   if (settings)
      refresh_rate = settings->floats.video_refresh_rate;

   if (refresh_rate <= 0.0f)
      refresh_rate = 60.0f;
   image->frame_duration = (unsigned)((1.0 / refresh_rate) * 1000000.0f);

   if (!image_transfer_start(image->handle, image->type))
   {
      task_image_cleanup(nbio);
      return -1;
   }

   image->is_blocking = 0;
   image->is_finished = 0;
   nbio->is_finished = 1;

   return 0;
}
