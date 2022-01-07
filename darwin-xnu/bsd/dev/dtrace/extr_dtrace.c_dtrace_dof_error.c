
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dof_hdr_t ;


 int CE_WARN ;
 int cmn_err (int ,char*,char const*) ;
 scalar_t__ dtrace_err_verbose ;
 int dtrace_errdebug (char const*) ;

__attribute__((used)) static void
dtrace_dof_error(dof_hdr_t *dof, const char *str)
{
#pragma unused(dof)
 if (dtrace_err_verbose)
  cmn_err(CE_WARN, "failed to process DOF: %s", str);




}
