
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {int* uu_rval; } ;



__attribute__((used)) static void
uthread_set_returnval(struct uthread *uth, int retval)
{
 uth->uu_rval[0] = retval;
}
