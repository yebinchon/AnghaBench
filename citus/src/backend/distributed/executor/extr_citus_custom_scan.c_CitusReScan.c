
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * es_param_list_info; } ;
typedef int * ParamListInfo ;
typedef TYPE_1__ EState ;
typedef int CustomScanState ;
typedef int CitusScanState ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 TYPE_1__* ScanStateGetExecutorState (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
CitusReScan(CustomScanState *node)
{
 CitusScanState *scanState = (CitusScanState *) node;
 EState *executorState = ScanStateGetExecutorState(scanState);
 ParamListInfo paramListInfo = executorState->es_param_list_info;

 if (paramListInfo != ((void*)0))
 {
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("Cursors for queries on distributed tables with "
          "parameters are currently unsupported")));
 }
}
