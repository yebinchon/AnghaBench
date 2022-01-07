
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kpersona_info {int dummy; } ;
typedef int pid_t ;


 int PERSONA_OP_PIDINFO ;
 int __persona (int ,int ,struct kpersona_info*,int *,size_t*) ;

int kpersona_pidinfo(pid_t pid, struct kpersona_info *info)
{
 size_t idlen = 1;
 uid_t id = (uid_t)pid;
 return __persona(PERSONA_OP_PIDINFO, 0, info, &id, &idlen);
}
