
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer_r; int buffer_l; int mvoice; } ;
typedef TYPE_1__ ax_audio_t ;


 int AXFreeMultiVoice (int ) ;
 int AXQuit () ;
 int AXRegisterFrameCallback (int *) ;
 int MEM1_free (int ) ;
 int free (TYPE_1__*) ;
 int * wiiu_cb_ax ;

__attribute__((used)) static void ax_audio_free(void* data)
{
   ax_audio_t* ax = (ax_audio_t*)data;
   wiiu_cb_ax = ((void*)0);

   AXRegisterFrameCallback(((void*)0));
   AXFreeMultiVoice(ax->mvoice);
   AXQuit();

   MEM1_free(ax->buffer_l);
   MEM1_free(ax->buffer_r);
   free(ax);
}
