
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef char* uuid_string_t ;
typedef int t_name ;
typedef TYPE_1__* proc_t ;
typedef int c_name ;
struct TYPE_6__ {int p_uuid; int p_comm; } ;


 int LOG_DEBUG ;
 int MAXCOMLEN ;
 TYPE_1__* PROC_NULL ;
 scalar_t__ escape_str (char*,scalar_t__,int) ;
 int kern_asl_msg (int ,char*,int,char*,char*,char*,char*,char*,char*,char*,char*,char*,char*,int *) ;
 int printf (char*,char*,int,char*,int) ;
 int proc_pid (TYPE_1__*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ strlen (char*) ;
 int uuid_unparse_upper (int ,char*) ;

void
fslog_extmod_msgtracer(proc_t caller, proc_t target)
{
 if ((caller != PROC_NULL) && (target != PROC_NULL)) {






  uuid_string_t uuidstr;
  char c_name[2*MAXCOMLEN + 2 + sizeof(uuid_string_t)];
  char t_name[2*MAXCOMLEN + 2 + sizeof(uuid_string_t)];

  strlcpy(c_name, caller->p_comm, sizeof(c_name));
  uuid_unparse_upper(caller->p_uuid, uuidstr);
  strlcat(c_name, "(", sizeof(c_name));
  strlcat(c_name, uuidstr, sizeof(c_name));
  strlcat(c_name, ")", sizeof(c_name));
  if (0 != escape_str(c_name, strlen(c_name) + 1, sizeof(c_name))) {
   return;
  }

  strlcpy(t_name, target->p_comm, sizeof(t_name));
  uuid_unparse_upper(target->p_uuid, uuidstr);
  strlcat(t_name, "(", sizeof(t_name));
  strlcat(t_name, uuidstr, sizeof(t_name));
  strlcat(t_name, ")", sizeof(t_name));
  if (0 != escape_str(t_name, strlen(t_name) + 1, sizeof(t_name))) {
   return;
  }
  kern_asl_msg(LOG_DEBUG, "messagetracer",
       5,
       "com.apple.message.domain", "com.apple.kernel.external_modification",
       "com.apple.message.signature", c_name,
       "com.apple.message.signature2", t_name,
       "com.apple.message.result", "noop",
       "com.apple.message.summarize", "YES",
       ((void*)0));
 }
}
