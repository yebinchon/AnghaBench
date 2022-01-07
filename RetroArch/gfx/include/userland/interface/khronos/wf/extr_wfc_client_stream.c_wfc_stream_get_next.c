
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WFCNativeStreamType ;


 int GLOBAL_LOCK () ;
 int GLOBAL_UNLOCK () ;
 int wfc_stream_next_handle ;

WFCNativeStreamType wfc_stream_get_next(void)


{
   GLOBAL_LOCK();

   WFCNativeStreamType next_stream = wfc_stream_next_handle;
   wfc_stream_next_handle++;

   GLOBAL_UNLOCK();

   return next_stream;
}
