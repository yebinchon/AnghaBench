
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_6__ {int PasswordRemoteOnly; int EncryptedPassword; } ;
struct TYPE_5__ {int IsPasswordPresented; int PasswordRemoteOnly; } ;
typedef TYPE_1__ RPC_CLIENT_PASSWORD_SETTING ;
typedef TYPE_2__ CLIENT ;


 scalar_t__ Cmp (int *,int ,int) ;
 int SHA1_SIZE ;
 int Sha0 (int *,char*,int ) ;

bool CtGetPasswordSetting(CLIENT *c, RPC_CLIENT_PASSWORD_SETTING *a)
{
 UCHAR hash[SHA1_SIZE];

 if (c == ((void*)0) || a == ((void*)0))
 {
  return 0;
 }

 Sha0(hash, "", 0);
 if (Cmp(hash, c->EncryptedPassword, SHA1_SIZE) == 0)
 {
  a->IsPasswordPresented = 0;
 }
 else
 {
  a->IsPasswordPresented = 1;
 }

 a->PasswordRemoteOnly = c->PasswordRemoteOnly;

 return 1;
}
