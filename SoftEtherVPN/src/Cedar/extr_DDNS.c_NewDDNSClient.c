
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_8__ {int ref; } ;
struct TYPE_7__ {int Thread; int Event; int Lock; int InternetSetting; int * Key; int Err_IPv6; int Err_IPv4; TYPE_2__* Cedar; } ;
typedef int INTERNET_SETTING ;
typedef TYPE_1__ DDNS_CLIENT ;
typedef TYPE_2__ CEDAR ;


 int AddRef (int ) ;
 int Copy (int *,int *,int) ;
 int DCGenNewKey (int *) ;
 int DCThread ;
 int ERR_TRYING_TO_CONNECT ;
 int NewEvent () ;
 int NewLock () ;
 int NewThread (int ,TYPE_1__*) ;
 int SHA1_SIZE ;
 int Sha1 (int *,int *,int) ;
 TYPE_1__* ZeroMalloc (int) ;

DDNS_CLIENT *NewDDNSClient(CEDAR *cedar, UCHAR *key, INTERNET_SETTING *t)
{
 DDNS_CLIENT *c;
 UCHAR key_hash[SHA1_SIZE];

 if (cedar == ((void*)0))
 {
  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(DDNS_CLIENT));
 c->Cedar = cedar;
 AddRef(c->Cedar->ref);

 c->Err_IPv4 = c->Err_IPv6 = ERR_TRYING_TO_CONNECT;

 if (key == ((void*)0))
 {

  DCGenNewKey(c->Key);
 }
 else
 {

  Copy(c->Key, key, SHA1_SIZE);
 }

 Sha1(key_hash, c->Key, sizeof(c->Key));


 if (t != ((void*)0))
 {
  Copy(&c->InternetSetting, t, sizeof(INTERNET_SETTING));
 }

 c->Lock = NewLock();


 c->Event = NewEvent();
 c->Thread = NewThread(DCThread, c);

 return c;
}
