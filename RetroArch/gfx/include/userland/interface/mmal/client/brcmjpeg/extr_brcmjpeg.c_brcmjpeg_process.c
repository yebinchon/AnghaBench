
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ output_handle; scalar_t__ output; scalar_t__ input_handle; scalar_t__ input; } ;
struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_1__ BRCMJPEG_T ;
typedef int BRCMJPEG_STATUS_T ;
typedef TYPE_2__ BRCMJPEG_REQUEST_T ;


 int BRCMJPEG_ERROR_REQUEST ;
 scalar_t__ BRCMJPEG_TYPE_ENCODER ;
 int LOCK_PROCESS (TYPE_1__*) ;
 int LOG_ERROR (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int UNLOCK_PROCESS (TYPE_1__*) ;
 int brcmjpeg_decode (TYPE_1__*,TYPE_2__*) ;
 int brcmjpeg_encode (TYPE_1__*,TYPE_2__*) ;

BRCMJPEG_STATUS_T brcmjpeg_process(BRCMJPEG_T *ctx, BRCMJPEG_REQUEST_T *req)
{
   BRCMJPEG_STATUS_T status;


   if ((req->input && req->input_handle) ||
       (req->output && req->output_handle))
   {
      LOG_ERROR("buffer pointer and handle both set (%p/%u %p/%u)",
            req->input, req->input_handle, req->output, req->output_handle);
      return BRCMJPEG_ERROR_REQUEST;
   }

   LOCK_PROCESS(ctx);
   if (ctx->type == BRCMJPEG_TYPE_ENCODER)
      status = brcmjpeg_encode(ctx, req);
   else
      status = brcmjpeg_decode(ctx, req);
   UNLOCK_PROCESS(ctx);

   return status;
}
