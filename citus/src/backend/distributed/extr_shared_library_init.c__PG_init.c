
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CitusExecutorRun ;
 int * CitusExecutorStart ;
 int CreateRequiredDirectories () ;
 int ERROR ;
 int * ExecutorRun_hook ;
 int * ExecutorStart_hook ;
 int InitConnParams () ;
 int InitPlacementConnectionManagement () ;
 int InitializeBackendManagement () ;
 int InitializeCitusQueryStats () ;
 int InitializeConnectionManagement () ;
 int InitializeMaintenanceDaemon () ;
 int InitializeTransactionManagement () ;
 scalar_t__ IsBinaryUpgrade ;
 int IsUnderPostmaster ;
 int PGC_POSTMASTER ;
 int PGC_S_OVERRIDE ;
 int * ProcessUtility_hook ;
 int RegisterCitusConfigVariables () ;
 int RegisterCitusCustomScanMethods () ;
 int RegisterNodes () ;
 int ResizeStackToMaximumDepth () ;
 int SetConfigOption (char*,char*,int ,int ) ;
 int TaskTrackerRegister () ;
 int * distributed_planner ;
 int emit_log_hook ;
 int ereport (int ,int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int * multi_ProcessUtility ;
 int multi_join_restriction_hook ;
 int multi_log_hook ;
 int multi_relation_restriction_hook ;
 int * planner_hook ;
 int process_shared_preload_libraries_in_progress ;
 int set_join_pathlist_hook ;
 int set_rel_pathlist_hook ;

void
_PG_init(void)
{
 if (!process_shared_preload_libraries_in_progress)
 {
  ereport(ERROR, (errmsg("Citus can only be loaded via shared_preload_libraries"),
      errhint("Add citus to shared_preload_libraries configuration "
        "variable in postgresql.conf in master and workers. Note "
        "that citus should be at the beginning of "
        "shared_preload_libraries.")));
 }
 if (planner_hook != ((void*)0) || ProcessUtility_hook != ((void*)0) ||
  ExecutorStart_hook != ((void*)0) || ExecutorRun_hook != ((void*)0))
 {
  ereport(ERROR, (errmsg("Citus has to be loaded first"),
      errhint("Place citus at the beginning of "
        "shared_preload_libraries.")));
 }

 ResizeStackToMaximumDepth();







 if (!IsUnderPostmaster)
 {
  CreateRequiredDirectories();
 }

 InitConnParams();






 RegisterCitusConfigVariables();


 RegisterNodes();


 RegisterCitusCustomScanMethods();


 planner_hook = distributed_planner;


 ProcessUtility_hook = multi_ProcessUtility;


 set_rel_pathlist_hook = multi_relation_restriction_hook;
 set_join_pathlist_hook = multi_join_restriction_hook;
 ExecutorStart_hook = CitusExecutorStart;
 ExecutorRun_hook = CitusExecutorRun;


 emit_log_hook = multi_log_hook;

 InitializeMaintenanceDaemon();


 TaskTrackerRegister();


 InitializeTransactionManagement();
 InitializeBackendManagement();
 InitializeConnectionManagement();
 InitPlacementConnectionManagement();
 InitializeCitusQueryStats();


 if (IsBinaryUpgrade)
 {
  SetConfigOption("allow_system_table_mods", "true", PGC_POSTMASTER,
      PGC_S_OVERRIDE);
 }
}
