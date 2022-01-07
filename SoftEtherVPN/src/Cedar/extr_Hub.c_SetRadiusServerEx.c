
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int RadiusOptionLock; void* RadiusSecret; void* RadiusRetryInterval; scalar_t__ RadiusServerPort; int * RadiusServerName; } ;
typedef TYPE_1__ HUB ;


 int * CopyStr (char*) ;
 int Free (int *) ;
 int FreeBuf (void*) ;
 int Lock (int ) ;
 void* NewBuf () ;
 void* RADIUS_RETRY_INTERVAL ;
 scalar_t__ RADIUS_RETRY_TIMEOUT ;
 int SeekBuf (void*,int ,int ) ;
 int StrLen (char*) ;
 int Unlock (int ) ;
 int WriteBuf (void*,char*,int ) ;

void SetRadiusServerEx(HUB *hub, char *name, UINT port, char *secret, UINT interval)
{

 if (hub == ((void*)0))
 {
  return;
 }

 Lock(hub->RadiusOptionLock);
 {
  if (hub->RadiusServerName != ((void*)0))
  {
   Free(hub->RadiusServerName);
  }

  if (name == ((void*)0))
  {
   hub->RadiusServerName = ((void*)0);
   hub->RadiusServerPort = 0;
   hub->RadiusRetryInterval = RADIUS_RETRY_INTERVAL;
   FreeBuf(hub->RadiusSecret);
  }
  else
  {
   hub->RadiusServerName = CopyStr(name);
   hub->RadiusServerPort = port;
   if (interval == 0)
   {
    hub->RadiusRetryInterval = RADIUS_RETRY_INTERVAL;
   }
   else if (interval > RADIUS_RETRY_TIMEOUT)
   {
    hub->RadiusRetryInterval = RADIUS_RETRY_TIMEOUT;
   }
   else
   {
    hub->RadiusRetryInterval = interval;
   }
   FreeBuf(hub->RadiusSecret);

   if (secret == ((void*)0))
   {
    hub->RadiusSecret = NewBuf();
   }
   else
   {
    hub->RadiusSecret = NewBuf();
    WriteBuf(hub->RadiusSecret, secret, StrLen(secret));
    SeekBuf(hub->RadiusSecret, 0, 0);
   }
  }
 }
 Unlock(hub->RadiusOptionLock);
}
