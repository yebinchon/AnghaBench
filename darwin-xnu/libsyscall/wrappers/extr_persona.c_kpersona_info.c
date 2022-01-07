
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kpersona_info {int dummy; } ;


 int PERSONA_OP_INFO ;
 int __persona (int ,int ,struct kpersona_info*,int *,size_t*) ;

int kpersona_info(uid_t id, struct kpersona_info *info)
{
 size_t idlen = 1;
 return __persona(PERSONA_OP_INFO, 0, info, &id, &idlen);
}
