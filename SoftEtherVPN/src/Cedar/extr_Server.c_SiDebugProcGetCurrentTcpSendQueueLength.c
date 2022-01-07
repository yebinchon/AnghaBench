
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;


 int CedarGetCurrentTcpQueueSize (int ) ;
 int CedarGetFifoBudgetConsuming (int ) ;
 int CedarGetQueueBudgetConsuming (int ) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int Format (char*,int ,char*,char*,char*,char*) ;
 int ToStr3 (char*,int ,int ) ;

UINT SiDebugProcGetCurrentTcpSendQueueLength(SERVER *s, char *in_str, char *ret_str, UINT ret_str_size)
{
 char tmp1[64], tmp2[64], tmp3[64];

 if (s == ((void*)0) || in_str == ((void*)0) || ret_str == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 ToStr3(tmp1, 0, CedarGetCurrentTcpQueueSize(s->Cedar));
 ToStr3(tmp2, 0, CedarGetQueueBudgetConsuming(s->Cedar));
 ToStr3(tmp3, 0, CedarGetFifoBudgetConsuming(s->Cedar));

 Format(ret_str, 0,
  "CurrentTcpQueueSize  = %s\n"
  "QueueBudgetConsuming = %s\n"
  "FifoBudgetConsuming  = %s\n",
  tmp1, tmp2, tmp3);

 return ERR_NO_ERROR;
}
