#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ buffer_width; scalar_t__ width; scalar_t__ buffer_height; scalar_t__ height; int /*<<< orphan*/  quality; scalar_t__ input_handle; int /*<<< orphan*/  pixel_format; } ;
struct TYPE_21__ {int slice_height; TYPE_1__* mmal; } ;
struct TYPE_20__ {int buffer_num; TYPE_5__* format; scalar_t__ is_enabled; int /*<<< orphan*/  buffer_size_min; int /*<<< orphan*/  buffer_size; } ;
struct TYPE_19__ {scalar_t__ encoding; TYPE_4__* es; } ;
struct TYPE_16__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_17__ {scalar_t__ width; scalar_t__ height; TYPE_2__ crop; } ;
struct TYPE_18__ {TYPE_3__ video; } ;
struct TYPE_15__ {TYPE_6__** output; TYPE_6__** input; void* status; } ;
typedef  void* MMAL_STATUS_T ;
typedef  TYPE_6__ MMAL_PORT_T ;
typedef  scalar_t__ MMAL_FOURCC_T ;
typedef  scalar_t__ MMAL_BOOL_T ;
typedef  TYPE_7__ BRCMJPEG_T ;
typedef  int /*<<< orphan*/  BRCMJPEG_STATUS_T ;
typedef  TYPE_8__ BRCMJPEG_REQUEST_T ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMJPEG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  EXECUTE ; 
 int /*<<< orphan*/  INPUT_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 void* MMAL_EINVAL ; 
 scalar_t__ MMAL_ENCODING_I420 ; 
 scalar_t__ MMAL_ENCODING_I420_SLICE ; 
 scalar_t__ MMAL_ENCODING_I422 ; 
 scalar_t__ MMAL_ENCODING_I422_SLICE ; 
 scalar_t__ MMAL_ENCODING_UNKNOWN ; 
 scalar_t__ MMAL_FALSE ; 
 int /*<<< orphan*/  MMAL_PARAMETER_JPEG_Q_FACTOR ; 
 void* MMAL_SUCCESS ; 
 scalar_t__ MMAL_TRUE ; 
 int /*<<< orphan*/  MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE ; 
 int /*<<< orphan*/  MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_6__*) ; 
 void* FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BRCMJPEG_STATUS_T FUNC7(BRCMJPEG_T *ctx,
   BRCMJPEG_REQUEST_T *req)
{
   MMAL_STATUS_T status = MMAL_SUCCESS;
   MMAL_FOURCC_T encoding = FUNC2(req->pixel_format);
   MMAL_PORT_T *port_in;
   BRCMJPEG_STATUS_T err = BRCMJPEG_SUCCESS;
   MMAL_BOOL_T slice_mode = MMAL_FALSE;

   if (encoding == MMAL_ENCODING_UNKNOWN)
      status = MMAL_EINVAL;
   FUNC0(status, INPUT_FORMAT, "format not supported (%i)",
      req->pixel_format);

   if (!req->buffer_width)
      req->buffer_width = req->width;
   if (!req->buffer_height)
      req->buffer_height = req->height;
   if (req->buffer_width < req->width || req->buffer_height < req->height)
      status = MMAL_EINVAL;
   FUNC0(status, INPUT_FORMAT, "invalid buffer width/height "
      "(%i<=%i %i<=%i)", req->buffer_width, req->width, req->buffer_height,
      req->height);

   ctx->slice_height = 0;
   ctx->mmal->status = MMAL_SUCCESS;
   port_in = ctx->mmal->input[0];

   /* The input port needs to be re-configured to take into account
    * the properties of the new frame to encode */
   if (port_in->is_enabled)
   {
      status = FUNC5(port_in);
      FUNC0(status, EXECUTE, "failed to disable input port");
   }

   port_in->format->encoding = encoding;
   port_in->format->es->video.width =
      port_in->format->es->video.crop.width = req->width;
   port_in->format->es->video.height =
      port_in->format->es->video.crop.height = req->height;
   port_in->buffer_num = 1;

   if (!req->input_handle &&
         (port_in->format->encoding == MMAL_ENCODING_I420 ||
          port_in->format->encoding == MMAL_ENCODING_I422))
   {
      if (port_in->format->encoding == MMAL_ENCODING_I420)
         port_in->format->encoding = MMAL_ENCODING_I420_SLICE;
      else if (port_in->format->encoding == MMAL_ENCODING_I422)
         port_in->format->encoding = MMAL_ENCODING_I422_SLICE;
      slice_mode = MMAL_TRUE;
      port_in->buffer_num = 3;
   }

   status = FUNC3(port_in);
   FUNC0(status, INPUT_FORMAT, "failed to commit input port format");

   ctx->slice_height = slice_mode ? 16 : port_in->format->es->video.height;
   port_in->buffer_size = port_in->buffer_size_min;

   if (req->input_handle)
      status = FUNC6(port_in, MMAL_WRAPPER_FLAG_PAYLOAD_USE_SHARED_MEMORY);
   else
      status = FUNC6(port_in, MMAL_WRAPPER_FLAG_PAYLOAD_ALLOCATE);
   FUNC0(status, EXECUTE, "failed to enable input port");

   FUNC4(ctx->mmal->output[0],
      MMAL_PARAMETER_JPEG_Q_FACTOR, req->quality);

   if (!ctx->mmal->output[0]->is_enabled)
   {
      status = FUNC6(ctx->mmal->output[0], 0);
      FUNC0(status, EXECUTE, "failed to enable output port");
   }

   FUNC1("encoder configured (%4.4s:%ux%u|%ux%u slice: %u)",
      (char *)&port_in->format->encoding,
      port_in->format->es->video.crop.width, port_in->format->es->video.crop.height,
      port_in->format->es->video.width, port_in->format->es->video.height,
      ctx->slice_height);
   return BRCMJPEG_SUCCESS;

 error:
   return err;
}