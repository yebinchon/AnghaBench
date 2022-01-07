
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 scalar_t__ ENOSYS ;
 scalar_t__ errno ;
 int info (char*,...) ;
 int kpersona_get (int*) ;

__attribute__((used)) static int persona_op_support(void)
{
 uid_t pna_id = -1;
 int ret = kpersona_get(&pna_id);
 if (ret == 0 || errno != ENOSYS) {
  info("Persona subsystem is supported (id=%d)", pna_id);
  return 0;
 }

 info("Persona subsystem is not supported");
 return ENOSYS;
}
