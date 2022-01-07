
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 scalar_t__ ctl_init () ;
 int ctl_initialized ;
 int ctl_lookup (char const*,int *,size_t*,size_t*) ;

int
ctl_nametomib(const char *name, size_t *mibp, size_t *miblenp)
{
 int ret;

 if (!ctl_initialized && ctl_init()) {
  ret = EAGAIN;
  goto label_return;
 }

 ret = ctl_lookup(name, ((void*)0), mibp, miblenp);
label_return:
 return(ret);
}
