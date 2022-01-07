
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_addr_t ;
typedef scalar_t__ pid_t ;
typedef int memorystatus_priority_entry_t ;
typedef size_t int32_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ USER_ADDR_NULL ;
 int copyout (int *,scalar_t__,size_t) ;
 int kfree (int *,size_t) ;
 int memorystatus_get_priority_list (int **,size_t*,size_t*,int ) ;
 int memorystatus_get_priority_pid (scalar_t__,scalar_t__,size_t) ;

__attribute__((used)) static int
memorystatus_cmd_get_priority_list(pid_t pid, user_addr_t buffer, size_t buffer_size, int32_t *retval) {
 int error = 0;
 boolean_t size_only;
 size_t list_size;





 size_only = ((buffer == USER_ADDR_NULL) ? TRUE: FALSE);

 if (pid != 0) {
  list_size = sizeof(memorystatus_priority_entry_t) * 1;
  if (!size_only) {
   error = memorystatus_get_priority_pid(pid, buffer, buffer_size);
  }
 } else {
  memorystatus_priority_entry_t *list = ((void*)0);
  error = memorystatus_get_priority_list(&list, &buffer_size, &list_size, size_only);

  if (error == 0) {
   if (!size_only) {
    error = copyout(list, buffer, list_size);
   }
  }

  if (list) {
   kfree(list, buffer_size);
  }
 }

 if (error == 0) {
  *retval = list_size;
 }

 return (error);
}
