
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uid_t ;
struct kpersona_info {scalar_t__* persona_name; void* persona_info_version; } ;
typedef scalar_t__ pid_t ;


 size_t ARRAY_SZ (char*) ;
 void* PERSONA_INFO_V1 ;
 int dump_kpersona (char*,struct kpersona_info*) ;
 int err (char*,int,char) ;
 int err_print (char*) ;
 int errno ;
 int info (char*,...) ;
 int kpersona_find (char const*,char,char*,size_t*) ;
 int kpersona_info (char,struct kpersona_info*) ;
 int kpersona_pidinfo (scalar_t__,struct kpersona_info*) ;

__attribute__((used)) static int persona_op_lookup(struct kpersona_info *ki, pid_t pid, uid_t uid)
{
 int ret;

 info("Looking up persona (login:%s, pid:%d, uid:%d)", ki->persona_name, pid, uid);
 if (pid > 0) {
  ki->persona_info_version = PERSONA_INFO_V1;
  ret = kpersona_pidinfo(pid, ki);
  if (ret < 0)
   err_print("pidinfo failed!");
  else
   dump_kpersona("Persona-for-pid:", ki);
 } else {
  int np = 0;
  uid_t personas[128];
  size_t npersonas = ARRAY_SZ(personas);
  const char *name = ((void*)0);
  if (ki->persona_name[0] != 0)
   name = ki->persona_name;

  np = kpersona_find(name, uid, personas, &npersonas);
  if (np < 0)
   err("kpersona_find returned %d (errno:%d)", np, errno);
  info("Found %zu persona%c", npersonas, npersonas != 1 ? 's' : ' ');
  np = npersonas;
  while (np--) {
   info("\tpersona[%d]=%d...", np, personas[np]);
   ki->persona_info_version = PERSONA_INFO_V1;
   ret = kpersona_info(personas[np], ki);
   if (ret < 0)
    err("kpersona_info failed (errno:%d) for persona[%d]", errno, personas[np]);
   dump_kpersona(((void*)0), ki);
  }
 }

 return ret;
}
