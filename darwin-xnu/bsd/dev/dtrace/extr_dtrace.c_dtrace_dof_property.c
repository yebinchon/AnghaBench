
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct TYPE_6__ {unsigned int dofh_loadsz; } ;
typedef TYPE_1__ dof_hdr_t ;


 int KM_SLEEP ;
 int PEReadNVRAMProperty (char const*,TYPE_1__*,unsigned int*) ;
 int dtrace_are_restrictions_relaxed () ;
 int dtrace_dof_destroy (TYPE_1__*) ;
 int dtrace_dof_error (int *,char*) ;
 scalar_t__ dtrace_dof_maxsize ;
 scalar_t__ dtrace_is_restricted () ;
 TYPE_1__* kmem_alloc_aligned (unsigned int,int,int ) ;

__attribute__((used)) static dof_hdr_t *
dtrace_dof_property(const char *name)
{
 unsigned int len = 0;
 dof_hdr_t *dof;

 if (dtrace_is_restricted() && !dtrace_are_restrictions_relaxed()) {
  return ((void*)0);
 }

 if (!PEReadNVRAMProperty(name, ((void*)0), &len)) {
  return ((void*)0);
 }

 dof = kmem_alloc_aligned(len, 8, KM_SLEEP);

 if (!PEReadNVRAMProperty(name, dof, &len)) {
  dtrace_dof_destroy(dof);
  dtrace_dof_error(((void*)0), "unreadable DOF");
  return ((void*)0);
 }

 if (len < sizeof (dof_hdr_t)) {
  dtrace_dof_destroy(dof);
  dtrace_dof_error(((void*)0), "truncated header");
  return (((void*)0));
 }

 if (len < dof->dofh_loadsz) {
  dtrace_dof_destroy(dof);
  dtrace_dof_error(((void*)0), "truncated DOF");
  return (((void*)0));
 }

 if (len != dof->dofh_loadsz) {
  dtrace_dof_destroy(dof);
  dtrace_dof_error(((void*)0), "invalid DOF size");
  return (((void*)0));
 }

 if (dof->dofh_loadsz >= (uint64_t)dtrace_dof_maxsize) {
  dtrace_dof_destroy(dof);
  dtrace_dof_error(((void*)0), "oversized DOF");
  return (((void*)0));
 }

 return (dof);
}
