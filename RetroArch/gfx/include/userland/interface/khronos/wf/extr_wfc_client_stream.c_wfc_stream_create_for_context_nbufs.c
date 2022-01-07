
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef TYPE_2__ WFC_STREAM_T ;
typedef scalar_t__ WFCNativeStreamType ;


 int STREAM_UNLOCK (TYPE_2__*) ;
 int VCOS_FUNCTION ;
 scalar_t__ WFC_INVALID_HANDLE ;
 int WFC_STREAM_FLAGS_NONE ;
 int vcos_log_error (char*,int ,int,int) ;
 int vcos_log_warn (char*,int ,int,scalar_t__,int,int) ;
 int vcos_verify (int) ;
 int wfc_server_stream_allocate_images (scalar_t__,int,int,int) ;
 scalar_t__ wfc_stream_create (scalar_t__,int) ;
 int wfc_stream_destroy (scalar_t__) ;
 TYPE_2__* wfc_stream_find_stream_ptr (scalar_t__) ;

uint32_t wfc_stream_create_for_context_nbufs
   (WFCNativeStreamType stream, uint32_t width, uint32_t height, uint32_t nbufs)

{
   WFC_STREAM_T *stream_ptr;
   bool stream_created = 0;

   if(!vcos_verify(stream != WFC_INVALID_HANDLE))
      {return 1;}

   stream_ptr = wfc_stream_find_stream_ptr(stream);
   if (stream_ptr)
   {
      uint32_t flags = stream_ptr->info.flags;


      STREAM_UNLOCK(stream_ptr);

      if (flags != WFC_STREAM_FLAGS_NONE)
      {
         vcos_log_error("%s: stream flags mismatch (expected 0x%x, got 0x%x)", VCOS_FUNCTION, WFC_STREAM_FLAGS_NONE, flags);
         return 1;
      }
   }
   else
   {

      if (wfc_stream_create(stream, WFC_STREAM_FLAGS_NONE) != 0)
         return 1;
      stream_created = 1;
   }


   if (!wfc_server_stream_allocate_images(stream, width, height, nbufs))
   {

      vcos_log_warn("%s: failed to allocate %u buffers for stream %X size %ux%u", VCOS_FUNCTION, nbufs, stream, width, height);
      if (stream_created)
         wfc_stream_destroy(stream);
      return 1;
   }

   return 0;
}
