
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int X ;
typedef scalar_t__ UINT64 ;
typedef int UCHAR ;
struct TYPE_19__ {int SecureSignProc; int SecurePublicCertName; int SecurePrivateKeyName; } ;
struct TYPE_18__ {int ServerName; TYPE_2__* Cedar; TYPE_3__* Session; } ;
struct TYPE_17__ {int Ok; struct TYPE_17__* SecureSign; int * ClientCert; int * Signature; scalar_t__ UserFinished; int SecureSignProc; int BitmapId; int * Random; int UseSecureDeviceId; int SecurePublicCertName; int SecurePrivateKeyName; TYPE_6__* Connection; } ;
struct TYPE_16__ {TYPE_7__* ClientAuth; int * ClientOption; } ;
struct TYPE_15__ {TYPE_1__* Client; } ;
struct TYPE_14__ {int UseSecureDeviceId; } ;
typedef int THREAD ;
typedef TYPE_3__ SESSION ;
typedef TYPE_4__ SECURE_SIGN_THREAD_PROC ;
typedef TYPE_4__ SECURE_SIGN ;
typedef TYPE_6__ CONNECTION ;
typedef int CLIENT_OPTION ;
typedef TYPE_7__ CLIENT_AUTH ;


 scalar_t__ CONNECTING_POOLING_SPAN ;
 int ClientSecureSignThread ;
 int ClientUploadNoop (TYPE_6__*) ;
 int CmGetSecureBitmapId (int ) ;
 int Copy (int *,int *,int) ;
 int Free (TYPE_4__*) ;
 int * NewThread (int ,TYPE_4__*) ;
 int ReleaseThread (int *) ;
 int SHA1_SIZE ;
 int StrCpy (int ,int,int ) ;
 scalar_t__ Tick64 () ;
 int WaitThread (int *,int) ;
 int WaitThreadInit (int *) ;
 TYPE_4__* ZeroMalloc (int) ;
 TYPE_4__* ZeroMallocEx (int,int) ;

bool ClientSecureSign(CONNECTION *c, UCHAR *sign, UCHAR *random, X **x)
{
 SECURE_SIGN_THREAD_PROC *p;
 SECURE_SIGN *ss;
 SESSION *s;
 CLIENT_OPTION *o;
 CLIENT_AUTH *a;
 THREAD *thread;
 UINT64 start;
 bool ret;

 if (c == ((void*)0) || sign == ((void*)0) || random == ((void*)0) || x == ((void*)0))
 {
  return 0;
 }

 s = c->Session;
 o = s->ClientOption;
 a = s->ClientAuth;

 p = ZeroMalloc(sizeof(SECURE_SIGN_THREAD_PROC));
 p->Connection = c;
 ss = p->SecureSign = ZeroMallocEx(sizeof(SECURE_SIGN), 1);
 StrCpy(ss->SecurePrivateKeyName, sizeof(ss->SecurePrivateKeyName),
  a->SecurePrivateKeyName);
 StrCpy(ss->SecurePublicCertName, sizeof(ss->SecurePublicCertName),
  a->SecurePublicCertName);
 ss->UseSecureDeviceId = c->Cedar->Client->UseSecureDeviceId;
 Copy(ss->Random, random, SHA1_SIZE);





 p->SecureSignProc = a->SecureSignProc;


 thread = NewThread(ClientSecureSignThread, p);
 WaitThreadInit(thread);


 start = Tick64();
 while (1)
 {
  if ((Tick64() - start) > CONNECTING_POOLING_SPAN)
  {

   start = Tick64();
   ClientUploadNoop(c);
  }
  if (p->UserFinished)
  {

   break;
  }
  WaitThread(thread, 500);
 }
 ReleaseThread(thread);

 ret = p->Ok;

 if (ret)
 {
  Copy(sign, ss->Signature, sizeof(ss->Signature));
  *x = ss->ClientCert;
 }

 Free(p->SecureSign);
 Free(p);

 return ret;
}
