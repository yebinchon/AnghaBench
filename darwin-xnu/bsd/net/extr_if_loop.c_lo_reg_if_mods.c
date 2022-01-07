
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPLE_IF_FAM_LOOPBACK ;
 int PF_INET ;
 int PF_INET6 ;
 int lo_attach_proto ;
 int printf (char*,int) ;
 int proto_register_plumber (int ,int ,int ,int *) ;

__attribute__((used)) static void
lo_reg_if_mods(void)
{
 int error;


 if ((error = proto_register_plumber(PF_INET,
     APPLE_IF_FAM_LOOPBACK, lo_attach_proto, ((void*)0))) != 0)
  printf("proto_register_plumber failed for AF_INET "
      "error=%d\n", error);

 if ((error = proto_register_plumber(PF_INET6,
     APPLE_IF_FAM_LOOPBACK, lo_attach_proto, ((void*)0))) != 0)
  printf("proto_register_plumber failed for AF_INET6 "
      "error=%d\n", error);
}
