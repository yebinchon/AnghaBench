
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int proc_t ;
typedef int boolean_t ;


 int ASSERT (int ) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ cs_restricted (int *) ;

boolean_t
dtrace_can_attach_to_proc(proc_t *proc)
{
#pragma unused(proc)
 ASSERT(proc != ((void*)0));






 return TRUE;
}
