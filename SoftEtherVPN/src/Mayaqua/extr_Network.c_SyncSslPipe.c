
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int IsDisconnected; int SslInOut; int RawOut; int RawIn; } ;
typedef TYPE_1__ SSL_PIPE ;


 int Debug (char*) ;
 int SslBioSync (int ,int,int) ;

bool SyncSslPipe(SSL_PIPE *s)
{
 UINT i;

 if (s == ((void*)0) || s->IsDisconnected)
 {
  return 0;
 }

 for (i = 0;i < 2;i++)
 {
  if (SslBioSync(s->RawIn, 1, 0) == 0)
  {
   s->IsDisconnected = 1;
   Debug("SyncSslPipe: s->RawIn error.\n");
   return 0;
  }

  if (SslBioSync(s->RawOut, 0, 1) == 0)
  {
   s->IsDisconnected = 1;
   Debug("SyncSslPipe: s->RawOut error.\n");
   return 0;
  }

  if (SslBioSync(s->SslInOut, 1, 1) == 0)
  {
   s->IsDisconnected = 1;
   Debug("SyncSslPipe: s->SslInOut error.\n");
   return 0;
  }
 }

 return 1;
}
