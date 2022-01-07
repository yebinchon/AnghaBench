
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int kauth_cred_t ;
typedef scalar_t__ id_t ;


 int EACCES ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_ismember_gid (int ,scalar_t__,int*) ;

int
posix_cred_access(kauth_cred_t cred, id_t object_uid, id_t object_gid, mode_t object_mode, mode_t mode_req)
{
 int is_member;
 mode_t mode_owner = (object_mode & S_IRWXU);
 mode_t mode_group = (object_mode & S_IRWXG) << 3;
 mode_t mode_world = (object_mode & S_IRWXO) << 6;




 if (kauth_cred_getuid(cred) == object_uid && (mode_req & mode_owner) == mode_req)
  return (0);
 if ((mode_req & mode_group & mode_world) == mode_req) {
  return (0);
 } else {



  if ((mode_req & mode_group) != mode_req) {





   if (!kauth_cred_ismember_gid(cred, object_gid, &is_member) && is_member) {



    return (EACCES);
   } else {
    if ((mode_req & mode_world) != mode_req) {



     return (EACCES);
    } else {



     return (0);
    }
   }
  } else {






   if (!kauth_cred_ismember_gid(cred, object_gid, &is_member) && is_member) {



    return (0);
   } else {
    if ((mode_req & mode_world) != mode_req) {



     return (EACCES);
    } else {



     return (0);
    }
   }
  }
 }
}
