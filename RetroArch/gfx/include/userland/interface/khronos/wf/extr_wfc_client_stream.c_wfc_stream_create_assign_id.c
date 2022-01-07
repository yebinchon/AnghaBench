
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int WFCNativeStreamType ;


 scalar_t__ VCOS_EEXIST ;
 int WFC_INVALID_HANDLE ;
 scalar_t__ wfc_stream_create (int ,scalar_t__) ;
 int wfc_stream_get_next () ;

WFCNativeStreamType wfc_stream_create_assign_id(uint32_t flags)

{
   WFCNativeStreamType stream = wfc_stream_get_next();
   uint32_t failure = wfc_stream_create(stream, flags);

   if (failure == VCOS_EEXIST)
   {

      stream = wfc_stream_get_next();
      failure = wfc_stream_create(stream, flags);
   }

   if(failure) {return WFC_INVALID_HANDLE;}
   else {return stream;}
}
