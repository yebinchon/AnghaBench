
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pw_shell; int pw_dir; int pw_gecos; int pw_gid; int pw_uid; int pw_passwd; int pw_name; } ;
struct TYPE_3__ {int shell; int dir; int gecos; int gid; int uid; int password; int name; } ;


 TYPE_2__ __tmp_passwd ;
 TYPE_1__ myos_pass ;

void build_tmp_passwd(){
 __tmp_passwd.pw_name=myos_pass.name;
 __tmp_passwd.pw_passwd=myos_pass.password;
 __tmp_passwd.pw_uid=myos_pass.uid;
 __tmp_passwd.pw_gid=myos_pass.gid;
 __tmp_passwd.pw_gecos=myos_pass.gecos;
 __tmp_passwd.pw_dir=myos_pass.dir;
 __tmp_passwd.pw_shell=myos_pass.shell;
}
