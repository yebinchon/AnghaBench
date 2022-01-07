
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ user_passwd; } ;
struct connectdata {TYPE_1__ bits; } ;
struct SASL {int authmechs; int prefmech; } ;


 int FALSE ;
 int SASL_MECH_EXTERNAL ;
 int TRUE ;

bool Curl_sasl_can_authenticate(struct SASL *sasl, struct connectdata *conn)
{

  if(conn->bits.user_passwd)
    return TRUE;


  if(sasl->authmechs & sasl->prefmech & SASL_MECH_EXTERNAL)
    return TRUE;

  return FALSE;
}
