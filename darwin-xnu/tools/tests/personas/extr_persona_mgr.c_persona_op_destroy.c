
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpersona_info {int persona_id; int persona_info_version; } ;


 int PERSONA_INFO_V1 ;
 int err_print (char*) ;
 int info (char*,int ) ;
 int kpersona_dealloc (int ) ;

__attribute__((used)) static int persona_op_destroy(struct kpersona_info *ki)
{
 int ret;

 info("Destroying Persona %d...", ki->persona_id);
 ki->persona_info_version = PERSONA_INFO_V1;
 ret = kpersona_dealloc(ki->persona_id);
 if (ret < 0)
  err_print("destroy failed!");

 return ret;
}
