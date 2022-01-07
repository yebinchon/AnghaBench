
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int PERSONA_OP_DEALLOC ;
 int __persona (int ,int ,int *,int *,size_t*) ;

int kpersona_dealloc(uid_t id)
{
 size_t idlen = 1;
 return __persona(PERSONA_OP_DEALLOC, 0, ((void*)0), &id, &idlen);
}
