
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gx_audio_t ;


 int AIRegisterDMACallback (int *) ;
 int AIStopDMA () ;
 int free (void*) ;
 int stop_audio ;

__attribute__((used)) static void gx_audio_free(void *data)
{
   gx_audio_t *wa = (gx_audio_t*)data;

   if (!wa)
      return;

   stop_audio = 1;
   AIStopDMA();
   AIRegisterDMACallback(((void*)0));

   free(data);
}
