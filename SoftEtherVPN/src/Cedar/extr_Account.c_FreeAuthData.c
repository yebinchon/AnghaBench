
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {void* NtUsername; } ;
struct TYPE_7__ {void* RadiusUsername; } ;
struct TYPE_6__ {void* CommonName; int * Serial; } ;
struct TYPE_5__ {int UserX; } ;
typedef TYPE_1__ AUTHUSERCERT ;
typedef TYPE_2__ AUTHROOTCERT ;
typedef TYPE_3__ AUTHRADIUS ;
typedef int AUTHPASSWORD ;
typedef TYPE_4__ AUTHNT ;


 int AUTHTYPE_ANONYMOUS ;





 int Free (void*) ;
 int FreeX (int ) ;
 int FreeXSerial (int *) ;

void FreeAuthData(UINT authtype, void *authdata)
{
 AUTHPASSWORD *pw = (AUTHPASSWORD *)authdata;
 AUTHUSERCERT *uc = (AUTHUSERCERT *)authdata;
 AUTHROOTCERT *rc = (AUTHROOTCERT *)authdata;
 AUTHRADIUS *rd = (AUTHRADIUS *)authdata;
 AUTHNT *nt = (AUTHNT *)authdata;

 if (authtype == AUTHTYPE_ANONYMOUS || authdata == ((void*)0))
 {
  return;
 }

 switch (authtype)
 {
 case 131:


  break;

 case 128:

  FreeX(uc->UserX);
  break;

 case 129:

  if (rc->Serial != ((void*)0))
  {
   FreeXSerial(rc->Serial);
  }
  if (rc->CommonName != ((void*)0))
  {
   Free(rc->CommonName);
  }
  break;

 case 130:

  Free(rd->RadiusUsername);
  break;

 case 132:

  Free(nt->NtUsername);
  break;
 }

 Free(authdata);
}
