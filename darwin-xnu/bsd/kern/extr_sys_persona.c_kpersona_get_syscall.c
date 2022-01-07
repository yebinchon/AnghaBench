
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
struct persona {int pna_id; } ;


 int ESRCH ;
 int copyout (int *,int ,int) ;
 struct persona* current_persona_get () ;
 int persona_put (struct persona*) ;

__attribute__((used)) static int kpersona_get_syscall(user_addr_t idp)
{
 int error;
 struct persona *persona = current_persona_get();

 if (!persona)
  return ESRCH;

 error = copyout(&persona->pna_id, idp, sizeof(persona->pna_id));
 persona_put(persona);

 return error;
}
