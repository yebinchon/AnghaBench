
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_addr_t ;
struct persona {int pna_login; int pna_type; int pna_id; } ;
struct kpersona_info {unsigned int persona_ngroups; int persona_name; int persona_gmuid; int persona_groups; int persona_gid; int persona_type; int persona_id; int persona_info_version; } ;
typedef scalar_t__ pid_t ;
typedef int pid ;
typedef int kinfo ;
struct TYPE_2__ {scalar_t__ p_pid; } ;


 int EPERM ;
 int ESRCH ;
 int MAXLOGNAME ;
 int NGROUPS ;
 int PERSONA_INFO_V1 ;
 int copyin (int ,scalar_t__*,int) ;
 TYPE_1__* current_proc () ;
 int kauth_cred_get () ;
 int kauth_cred_issuser (int ) ;
 int kpersona_copyout (struct kpersona_info*,int ) ;
 int memset (struct kpersona_info*,int ,int) ;
 int persona_get_gid (struct persona*) ;
 int persona_get_gmuid (struct persona*) ;
 int persona_get_groups (struct persona*,unsigned int*,int ,int ) ;
 struct persona* persona_proc_get (scalar_t__) ;
 int persona_put (struct persona*) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int kpersona_pidinfo_syscall(user_addr_t idp, user_addr_t infop)
{
 int error;
 pid_t pid;
 struct persona *persona;
 struct kpersona_info kinfo;

 error = copyin(idp, &pid, sizeof(pid));
 if (error)
  return error;

 if (!kauth_cred_issuser(kauth_cred_get())
     && (pid != current_proc()->p_pid))
  return EPERM;

 persona = persona_proc_get(pid);
 if (!persona)
  return ESRCH;

 memset(&kinfo, 0, sizeof(kinfo));
 kinfo.persona_info_version = PERSONA_INFO_V1;
 kinfo.persona_id = persona->pna_id;
 kinfo.persona_type = persona->pna_type;
 kinfo.persona_gid = persona_get_gid(persona);
 unsigned ngroups = 0;
 persona_get_groups(persona, &ngroups, kinfo.persona_groups, NGROUPS);
 kinfo.persona_ngroups = ngroups;
 kinfo.persona_gmuid = persona_get_gmuid(persona);

 strncpy(kinfo.persona_name, persona->pna_login, MAXLOGNAME);

 persona_put(persona);

 error = kpersona_copyout(&kinfo, infop);

 return error;
}
