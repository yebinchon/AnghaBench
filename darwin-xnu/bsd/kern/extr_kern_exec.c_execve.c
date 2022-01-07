
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct execve_args {int envp; int argp; int fname; } ;
struct __mac_execve_args {int mac_p; int envp; int argp; int fname; } ;
typedef int proc_t ;
typedef int int32_t ;


 int DBG_FUNC_NONE ;
 int USER_ADDR_NULL ;
 int VM_EXECVE ;
 int __mac_execve (int ,struct __mac_execve_args*,int *) ;
 int memoryshot (int ,int ) ;

int
execve(proc_t p, struct execve_args *uap, int32_t *retval)
{
 struct __mac_execve_args muap;
 int err;

 memoryshot(VM_EXECVE, DBG_FUNC_NONE);

 muap.fname = uap->fname;
 muap.argp = uap->argp;
 muap.envp = uap->envp;
 muap.mac_p = USER_ADDR_NULL;
 err = __mac_execve(p, &muap, retval);

 return(err);
}
