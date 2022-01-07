
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kpersona_info {scalar_t__* persona_name; scalar_t__* persona_groups; scalar_t__ persona_ngroups; scalar_t__ persona_gid; scalar_t__ persona_type; int persona_id; int persona_info_version; } ;


 int PERSONA_INFO_V1 ;
 int PERSONA_OP_FIND ;
 int __persona (int ,int ,struct kpersona_info*,int *,size_t*) ;
 int strlcpy (scalar_t__*,char const*,int) ;

int kpersona_find(const char *name, uid_t uid, uid_t *id, size_t *idlen)
{
 int ret;
 struct kpersona_info kinfo;
 kinfo.persona_info_version = PERSONA_INFO_V1;
 kinfo.persona_id = uid;
 kinfo.persona_type = 0;
 kinfo.persona_gid = 0;
 kinfo.persona_ngroups = 0;
 kinfo.persona_groups[0] = 0;
 kinfo.persona_name[0] = 0;
 if (name)
  strlcpy(kinfo.persona_name, name, sizeof(kinfo.persona_name));
 ret = __persona(PERSONA_OP_FIND, 0, &kinfo, id, idlen);
 if (ret < 0)
  return ret;
 return (int)(*idlen);
}
