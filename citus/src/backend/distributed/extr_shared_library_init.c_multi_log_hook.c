
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ elevel; scalar_t__ sqlerrcode; char* message; } ;
typedef TYPE_1__ ErrorData ;


 scalar_t__ ERRCODE_QUERY_CANCELED ;
 scalar_t__ ERRCODE_T_R_DEADLOCK_DETECTED ;
 scalar_t__ ERROR ;
 scalar_t__ MyBackendGotCancelledDueToDeadlock () ;

__attribute__((used)) static void
multi_log_hook(ErrorData *edata)
{




 if (edata->elevel == ERROR && edata->sqlerrcode == ERRCODE_QUERY_CANCELED &&
  MyBackendGotCancelledDueToDeadlock())
 {
  edata->sqlerrcode = ERRCODE_T_R_DEADLOCK_DETECTED;
  edata->message = "canceling the transaction since it was "
       "involved in a distributed deadlock";
 }
}
