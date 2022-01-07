
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* mempool; int drv; } ;
typedef TYPE_1__ libnx_audren_t ;


 int audrenExit () ;
 int audrvClose (int *) ;
 int audrvVoiceStop (int *,int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void libnx_audren_audio_free(void *data)
{
   libnx_audren_t *aud = (libnx_audren_t*)data;

   if (!aud)
      return;

   audrvVoiceStop(&aud->drv, 0);
   audrvClose(&aud->drv);
   audrenExit();

   if (aud->mempool)
   {
      free(aud->mempool);
   }

   free(aud);
}
