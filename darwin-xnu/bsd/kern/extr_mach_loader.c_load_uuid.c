
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uuid_command {int cmdsize; int * uuid; } ;
typedef int load_return_t ;
struct TYPE_3__ {int * uuid; } ;
typedef TYPE_1__ load_result_t ;


 int LOAD_BADMACHO ;
 int LOAD_SUCCESS ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static
load_return_t
load_uuid(
 struct uuid_command *uulp,
 char *command_end,
 load_result_t *result
)
{






  if ((uulp->cmdsize < sizeof(struct uuid_command)) ||
      (((char *)uulp + sizeof(struct uuid_command)) > command_end)) {
   return (LOAD_BADMACHO);
  }

  memcpy(&result->uuid[0], &uulp->uuid[0], sizeof(result->uuid));
  return (LOAD_SUCCESS);
}
