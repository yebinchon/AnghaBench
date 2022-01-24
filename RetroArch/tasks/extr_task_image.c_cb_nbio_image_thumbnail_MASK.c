#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nbio_image_handle {size_t size; unsigned int frame_duration; int is_blocking; int is_finished; int /*<<< orphan*/  type; void* handle; int /*<<< orphan*/ * cb; int /*<<< orphan*/  status; } ;
struct TYPE_6__ {float video_refresh_rate; } ;
struct TYPE_7__ {TYPE_1__ floats; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_8__ {int is_finished; int /*<<< orphan*/  handle; scalar_t__ data; } ;
typedef  TYPE_3__ nbio_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  IMAGE_STATUS_TRANSFER ; 
 int /*<<< orphan*/  cb_image_thumbnail ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(void *data, size_t len)
{
   void *ptr                       = NULL;
   nbio_handle_t *nbio             = (nbio_handle_t*)data;
   struct nbio_image_handle *image = nbio  ? (struct nbio_image_handle*)nbio->data : NULL;
   void *handle                    = image ? FUNC1(image->type)       : NULL;
   settings_t *settings            = FUNC0();
   float refresh_rate              = 0.0f;

   if (!handle)
      return -1;

   image->status                   = IMAGE_STATUS_TRANSFER;
   image->handle                   = handle;
   image->cb                       = &cb_image_thumbnail;

   ptr                             = FUNC4(nbio->handle, &len);

   FUNC2(image->handle, image->type, ptr, len);

   /* Set image size */
   image->size                     = len;

   /* Set task iteration duration */
   if (settings)
      refresh_rate = settings->floats.video_refresh_rate;

   if (refresh_rate <= 0.0f)
      refresh_rate = 60.0f;
   image->frame_duration = (unsigned)((1.0 / refresh_rate) * 1000000.0f);

   if (!FUNC3(image->handle, image->type))
   {
      FUNC5(nbio);
      return -1;
   }

   image->is_blocking              = false;
   image->is_finished              = false;
   nbio->is_finished               = true;

   return 0;
}