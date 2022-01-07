
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uid_t ;
struct persona {int dummy; } ;
typedef int persona_id ;


 int EPERM ;
 int ESRCH ;
 int copyin (int ,int *,int) ;
 int kauth_cred_get () ;
 int kauth_cred_issuser (int ) ;
 struct persona* persona_lookup_and_invalidate (int ) ;
 int persona_put (struct persona*) ;

__attribute__((used)) static int kpersona_dealloc_syscall(user_addr_t idp)
{
 int error = 0;
 uid_t persona_id;
 struct persona *persona;

 if (!kauth_cred_issuser(kauth_cred_get()))
  return EPERM;

 error = copyin(idp, &persona_id, sizeof(persona_id));
 if (error)
  return error;


 persona = persona_lookup_and_invalidate(persona_id);

 if (!persona)
  return ESRCH;


 persona_put(persona);


 persona_put(persona);

 return error;
}
