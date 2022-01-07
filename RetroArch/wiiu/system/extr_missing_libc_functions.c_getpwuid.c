
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {char* pw_name; char* pw_passwd; int pw_gid; char* pw_gecos; char* pw_dir; char* pw_shell; int pw_uid; } ;


 struct passwd out ;

struct passwd* getpwuid(uid_t uid)
{
   out.pw_name = "retroarch";
   out.pw_passwd = "Wait, what?";
   out.pw_uid = uid;
   out.pw_gid = 1000;
   out.pw_gecos = "retroarch";
   out.pw_dir = "sd:/";
   out.pw_shell = "/vol/system_slc/fw.img";

   return &out;
}
