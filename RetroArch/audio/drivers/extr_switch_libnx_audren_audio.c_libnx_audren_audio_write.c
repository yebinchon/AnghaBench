
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_3__ {int update_lock; int drv; scalar_t__ nonblocking; } ;
typedef TYPE_1__ libnx_audren_t ;


 int audrenWaitFrame () ;
 int audrvUpdate (int *) ;
 scalar_t__ libnx_audren_audio_append (TYPE_1__*,void const*,size_t) ;
 int mutexLock (int *) ;
 int mutexUnlock (int *) ;

__attribute__((used)) static ssize_t libnx_audren_audio_write(void *data, const void *buf, size_t size)
{
   libnx_audren_t *aud = (libnx_audren_t*)data;
   size_t written = 0;

   if (!aud)
      return -1;

   while(written < size)
   {
      written += libnx_audren_audio_append(aud, buf + written, size - written);
      if(written != size)
      {
         if(aud->nonblocking)
         {
            break;
         }
         else
         {
            mutexLock(&aud->update_lock);
            audrvUpdate(&aud->drv);
            mutexUnlock(&aud->update_lock);
            audrenWaitFrame();
         }
      }
   }

   return written;
}
