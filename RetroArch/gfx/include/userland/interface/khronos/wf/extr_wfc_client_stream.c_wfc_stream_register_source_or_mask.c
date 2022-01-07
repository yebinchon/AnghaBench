
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_of_sources_or_masks; } ;
typedef TYPE_1__ WFC_STREAM_T ;
typedef int WFCNativeStreamType ;


 int STREAM_UNLOCK (TYPE_1__*) ;
 int VCOS_FUNCTION ;
 int vcos_log_trace (char*,int ,int ,int,int) ;
 scalar_t__ vcos_verify (int) ;
 int wfc_stream_destroy_if_ready (TYPE_1__*) ;
 TYPE_1__* wfc_stream_find_stream_ptr (int ) ;

bool wfc_stream_register_source_or_mask(WFCNativeStreamType stream, bool add_source_or_mask)


{
   WFC_STREAM_T *stream_ptr = wfc_stream_find_stream_ptr(stream);

   if (!stream_ptr)
      return 0;

   vcos_log_trace("%s: stream 0x%x %d->%d", VCOS_FUNCTION, stream,
         stream_ptr->num_of_sources_or_masks,
         add_source_or_mask ? stream_ptr->num_of_sources_or_masks + 1 : stream_ptr->num_of_sources_or_masks - 1);

   if(add_source_or_mask)
   {
      stream_ptr->num_of_sources_or_masks++;
      STREAM_UNLOCK(stream_ptr);
   }
   else
   {
      if(vcos_verify(stream_ptr->num_of_sources_or_masks > 0))
         {stream_ptr->num_of_sources_or_masks--;}


      wfc_stream_destroy_if_ready(stream_ptr);
   }

   return 1;
}
