
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {char* dtpd_provider; char* dtpd_mod; char* dtpd_func; char* dtpd_name; } ;
typedef TYPE_1__ dtrace_probedesc_t ;
typedef int dof_secidx_t ;
struct TYPE_13__ {scalar_t__ dofs_type; int dofs_align; scalar_t__ dofs_offset; size_t dofs_size; } ;
typedef TYPE_2__ dof_sec_t ;
struct TYPE_14__ {size_t dofp_provider; size_t dofp_mod; size_t dofp_func; size_t dofp_name; int dofp_strtab; } ;
typedef TYPE_3__ dof_probedesc_t ;
struct TYPE_15__ {scalar_t__ dofh_loadsz; } ;
typedef TYPE_4__ dof_hdr_t ;


 scalar_t__ DOF_SECT_PROBEDESC ;
 int DOF_SECT_STRTAB ;
 int DTRACE_FUNCNAMELEN ;
 int DTRACE_MODNAMELEN ;
 int DTRACE_NAMELEN ;
 int DTRACE_PROVNAMELEN ;
 int MIN (int,size_t) ;
 int dtrace_dof_error (TYPE_4__*,char*) ;
 TYPE_2__* dtrace_dof_sect (TYPE_4__*,int ,int ) ;
 int strncpy (char*,char*,int ) ;

__attribute__((used)) static dtrace_probedesc_t *
dtrace_dof_probedesc(dof_hdr_t *dof, dof_sec_t *sec, dtrace_probedesc_t *desc)
{
 dof_probedesc_t *probe;
 dof_sec_t *strtab;
 uintptr_t daddr = (uintptr_t)dof;
 uintptr_t str;
 size_t size;

 if (sec->dofs_type != DOF_SECT_PROBEDESC) {
  dtrace_dof_error(dof, "invalid probe section");
  return (((void*)0));
 }

 if (sec->dofs_align != sizeof (dof_secidx_t)) {
  dtrace_dof_error(dof, "bad alignment in probe description");
  return (((void*)0));
 }

 if (sec->dofs_offset + sizeof (dof_probedesc_t) > dof->dofh_loadsz) {
  dtrace_dof_error(dof, "truncated probe description");
  return (((void*)0));
 }

 probe = (dof_probedesc_t *)(uintptr_t)(daddr + sec->dofs_offset);
 strtab = dtrace_dof_sect(dof, DOF_SECT_STRTAB, probe->dofp_strtab);

 if (strtab == ((void*)0))
  return (((void*)0));

 str = daddr + strtab->dofs_offset;
 size = strtab->dofs_size;

 if (probe->dofp_provider >= strtab->dofs_size) {
  dtrace_dof_error(dof, "corrupt probe provider");
  return (((void*)0));
 }

 (void) strncpy(desc->dtpd_provider,
     (char *)(str + probe->dofp_provider),
     MIN(DTRACE_PROVNAMELEN - 1, size - probe->dofp_provider));


 desc->dtpd_provider[DTRACE_PROVNAMELEN - 1] = '\0';

 if (probe->dofp_mod >= strtab->dofs_size) {
  dtrace_dof_error(dof, "corrupt probe module");
  return (((void*)0));
 }

 (void) strncpy(desc->dtpd_mod, (char *)(str + probe->dofp_mod),
     MIN(DTRACE_MODNAMELEN - 1, size - probe->dofp_mod));


 desc->dtpd_mod[DTRACE_MODNAMELEN - 1] = '\0';

 if (probe->dofp_func >= strtab->dofs_size) {
  dtrace_dof_error(dof, "corrupt probe function");
  return (((void*)0));
 }

 (void) strncpy(desc->dtpd_func, (char *)(str + probe->dofp_func),
     MIN(DTRACE_FUNCNAMELEN - 1, size - probe->dofp_func));


 desc->dtpd_func[DTRACE_FUNCNAMELEN - 1] = '\0';

 if (probe->dofp_name >= strtab->dofs_size) {
  dtrace_dof_error(dof, "corrupt probe name");
  return (((void*)0));
 }

 (void) strncpy(desc->dtpd_name, (char *)(str + probe->dofp_name),
     MIN(DTRACE_NAMELEN - 1, size - probe->dofp_name));


 desc->dtpd_name[DTRACE_NAMELEN - 1] = '\0';

 return (desc);
}
