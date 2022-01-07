
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GUC_ACTION_LOCAL ;
 int PGC_SUSET ;
 int PGC_S_SESSION ;
 int PGC_USERSET ;
 int set_config_option (char*,char*,int ,int ,int ,int,int ,int) ;
 scalar_t__ superuser () ;

void
DisableLocalExecution(void)
{
 set_config_option("citus.enable_local_execution", "off",
       (superuser() ? PGC_SUSET : PGC_USERSET), PGC_S_SESSION,
       GUC_ACTION_LOCAL, 1, 0, 0);
}
