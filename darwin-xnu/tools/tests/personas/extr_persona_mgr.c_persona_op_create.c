
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kpersona_info {int persona_info_version; } ;


 int PERSONA_INFO_V1 ;
 int dump_kpersona (int *,struct kpersona_info*) ;
 int err (char*,int,int ) ;
 int errno ;
 int info (char*,...) ;
 int kpersona_alloc (struct kpersona_info*,int *) ;

__attribute__((used)) static int persona_op_create(struct kpersona_info *ki)
{
 int ret;
 uid_t persona_id = 0;

 info("Creating persona...");
 ki->persona_info_version = PERSONA_INFO_V1;
 ret = kpersona_alloc(ki, &persona_id);
 if (ret == 0) {
  info("Created persona %d:", persona_id);
  dump_kpersona(((void*)0), ki);
 } else {
  err("kpersona_alloc return %d (errno:%d)", ret, errno);
 }

 return ret;
}
