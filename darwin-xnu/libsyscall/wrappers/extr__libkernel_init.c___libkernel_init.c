
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ProgramVars {int dummy; } ;
typedef TYPE_1__* _libkernel_functions_t ;
struct TYPE_4__ {scalar_t__ dlsym; } ;


 scalar_t__ _dlsym ;
 TYPE_1__* _libkernel_functions ;
 int mach_init () ;

void
__libkernel_init(_libkernel_functions_t fns,
  const char *envp[] __attribute__((unused)),
  const char *apple[] __attribute__((unused)),
  const struct ProgramVars *vars __attribute__((unused)))
{
 _libkernel_functions = fns;
 if (fns->dlsym) {
  _dlsym = fns->dlsym;
 }
 mach_init();
}
