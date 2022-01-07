
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fileport_fdtype_args {TYPE_1__* ffa_pfi; TYPE_1__* ffa_pfi_end; } ;
struct fileglob {int dummy; } ;
typedef int mach_port_name_t ;
typedef scalar_t__ file_type_t ;
struct TYPE_2__ {int proc_fileport; scalar_t__ proc_fdtype; } ;


 scalar_t__ DTYPE_ATALK ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 scalar_t__ PROX_FDTYPE_ATALK ;

__attribute__((used)) static int
proc_fileport_fdtype(mach_port_name_t name, struct fileglob *fg, void *arg)
{
 struct fileport_fdtype_args *ffa = arg;

 if (ffa->ffa_pfi != ffa->ffa_pfi_end) {
  file_type_t fdtype = FILEGLOB_DTYPE(fg);

  ffa->ffa_pfi->proc_fdtype = (fdtype != DTYPE_ATALK) ?
   fdtype : PROX_FDTYPE_ATALK;
  ffa->ffa_pfi->proc_fileport = name;
  ffa->ffa_pfi++;
  return (0);
 } else
  return (-1);
}
