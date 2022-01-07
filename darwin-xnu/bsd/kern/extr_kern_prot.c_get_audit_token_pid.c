
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* val; } ;
typedef TYPE_1__ audit_token_t ;



int
get_audit_token_pid(audit_token_t *audit_token)
{

 if (audit_token)
  return (int)audit_token->val[5];
 return -1;
}
