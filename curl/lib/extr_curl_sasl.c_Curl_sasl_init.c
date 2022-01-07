
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct SASLproto {int dummy; } ;
struct SASL {void* force_ir; void* mutual_auth; int resetprefs; void* authused; int prefmech; void* authmechs; int state; struct SASLproto const* params; } ;


 void* FALSE ;
 int SASL_AUTH_DEFAULT ;
 void* SASL_AUTH_NONE ;
 int SASL_STOP ;
 int TRUE ;

void Curl_sasl_init(struct SASL *sasl, const struct SASLproto *params)
{
  sasl->params = params;
  sasl->state = SASL_STOP;
  sasl->authmechs = SASL_AUTH_NONE;
  sasl->prefmech = SASL_AUTH_DEFAULT;
  sasl->authused = SASL_AUTH_NONE;
  sasl->resetprefs = TRUE;
  sasl->mutual_auth = FALSE;
  sasl->force_ir = FALSE;
}
