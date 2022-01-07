
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uid_t ;
struct persona {int pna_login; int pna_type; int pna_id; } ;
struct kpersona_info {unsigned int persona_ngroups; int persona_name; int persona_gmuid; int persona_groups; int persona_gid; int persona_type; int persona_id; int persona_info_version; } ;
typedef int persona_id ;
typedef int kinfo ;


 int ESRCH ;
 int MAXLOGNAME ;
 int NGROUPS ;
 int PERSONA_INFO_V1 ;
 int copyin (int ,int *,int) ;
 int kpersona_copyout (struct kpersona_info*,int ) ;
 int memset (struct kpersona_info*,int ,int) ;
 int persona_dbg (char*,int ,int ,int ) ;
 int persona_get_gid (struct persona*) ;
 int persona_get_gmuid (struct persona*) ;
 int persona_get_groups (struct persona*,unsigned int*,int ,int ) ;
 struct persona* persona_lookup (int ) ;
 int persona_put (struct persona*) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int kpersona_info_syscall(user_addr_t idp, user_addr_t infop)
{
 int error;
 uid_t persona_id;
 struct persona *persona;
 struct kpersona_info kinfo;

 error = copyin(idp, &persona_id, sizeof(persona_id));
 if (error)
  return error;






 persona = persona_lookup(persona_id);
 if (!persona)
  return ESRCH;

 persona_dbg("FOUND: persona: id:%d, gid:%d, login:\"%s\"",
      persona->pna_id, persona_get_gid(persona),
      persona->pna_login);

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
