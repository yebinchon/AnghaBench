
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tpr_t ;
struct session {int dummy; } ;


 int session_rele (struct session*) ;

void
tprintf_close(tpr_t sessp)
{
 if (sessp)
  session_rele((struct session *) sessp);
}
