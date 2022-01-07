
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {int * NtUsername; } ;
struct TYPE_11__ {int NtLmSecureHash; int HashedKey; } ;
struct TYPE_10__ {int * RadiusUsername; } ;
struct TYPE_9__ {int * CommonName; TYPE_1__* Serial; } ;
struct TYPE_8__ {int UserX; } ;
struct TYPE_7__ {int size; int data; } ;
typedef int PACK ;
typedef TYPE_2__ AUTHUSERCERT ;
typedef TYPE_3__ AUTHROOTCERT ;
typedef TYPE_4__ AUTHRADIUS ;
typedef TYPE_5__ AUTHPASSWORD ;
typedef TYPE_6__ AUTHNT ;







 int PackAddData (int *,char*,int ,int) ;
 int PackAddInt (int *,char*,int) ;
 int PackAddUniStr (int *,char*,int *) ;
 int PackAddX (int *,char*,int ) ;

void OutRpcAuthData(PACK *p, void *authdata, UINT authtype)
{
 AUTHPASSWORD *pw = authdata;
 AUTHUSERCERT *usercert = authdata;
 AUTHROOTCERT *rootcert = authdata;
 AUTHRADIUS *radius = authdata;
 AUTHNT *nt = authdata;

 if (p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "AuthType", authtype);

 switch (authtype)
 {
 case 131:
  PackAddData(p, "HashedKey", pw->HashedKey, sizeof(pw->HashedKey));
  PackAddData(p, "NtLmSecureHash", pw->NtLmSecureHash, sizeof(pw->NtLmSecureHash));
  break;

 case 128:
  PackAddX(p, "UserX", usercert->UserX);
  break;

 case 129:
  if (rootcert->Serial != ((void*)0))
  {
   PackAddData(p, "Serial", rootcert->Serial->data, rootcert->Serial->size);
  }
  if (rootcert->CommonName != ((void*)0))
  {
   PackAddUniStr(p, "CommonName", rootcert->CommonName);
  }
  break;

 case 130:
  PackAddUniStr(p, "RadiusUsername", radius->RadiusUsername);
  break;

 case 132:
  PackAddUniStr(p, "NtUsername", nt->NtUsername);
  break;
 }
}
