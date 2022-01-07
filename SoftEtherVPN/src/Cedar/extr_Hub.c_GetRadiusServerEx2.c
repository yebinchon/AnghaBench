
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {char* RadiusServerName; char* RadiusSuffixFilter; int RadiusOptionLock; TYPE_1__* RadiusSecret; scalar_t__ RadiusRetryInterval; scalar_t__ RadiusServerPort; } ;
struct TYPE_4__ {int Size; int Buf; } ;
typedef TYPE_2__ HUB ;


 int Copy (char*,int ,int ) ;
 int Free (char*) ;
 int Lock (int ) ;
 int StrCpy (char*,scalar_t__,char*) ;
 int Unlock (int ) ;
 char* ZeroMalloc (scalar_t__) ;

bool GetRadiusServerEx2(HUB *hub, char *name, UINT size, UINT *port, char *secret, UINT secret_size, UINT *interval, char *suffix_filter, UINT suffix_filter_size)
{
 bool ret = 0;

 if (hub == ((void*)0) || name == ((void*)0) || port == ((void*)0) || secret == ((void*)0) || interval == ((void*)0))
 {
  return 0;
 }

 Lock(hub->RadiusOptionLock);
 {
  if (hub->RadiusServerName != ((void*)0))
  {
   char *tmp;
   UINT tmp_size;
   StrCpy(name, size, hub->RadiusServerName);
   *port = hub->RadiusServerPort;
   *interval = hub->RadiusRetryInterval;

   tmp_size = hub->RadiusSecret->Size + 1;
   tmp = ZeroMalloc(tmp_size);
   Copy(tmp, hub->RadiusSecret->Buf, hub->RadiusSecret->Size);
   StrCpy(secret, secret_size, tmp);
   Free(tmp);

   if (suffix_filter != ((void*)0))
   {
    StrCpy(suffix_filter, suffix_filter_size, hub->RadiusSuffixFilter);
   }

   ret = 1;
  }
 }
 Unlock(hub->RadiusOptionLock);

 return ret;
}
