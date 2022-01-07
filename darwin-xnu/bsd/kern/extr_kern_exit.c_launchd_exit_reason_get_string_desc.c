
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* os_reason_t ;
typedef int kcdata_iter_t ;
struct TYPE_4__ {scalar_t__ osr_bufsize; int * osr_kcd_buf; } ;


 int EXIT_REASON_USER_DESC ;
 scalar_t__ KCDATA_BUFFER_BEGIN_OS_REASON ;
 TYPE_1__* OS_REASON_NULL ;
 int kcdata_iter (int *,scalar_t__) ;
 int kcdata_iter_find_type (int ,int ) ;
 scalar_t__ kcdata_iter_payload (int ) ;
 int kcdata_iter_type (int ) ;
 int kcdata_iter_valid (int ) ;
 int printf (char*,...) ;

char *
launchd_exit_reason_get_string_desc(os_reason_t exit_reason)
{
 kcdata_iter_t iter;

 if (exit_reason == OS_REASON_NULL || exit_reason->osr_kcd_buf == ((void*)0) ||
   exit_reason->osr_bufsize == 0) {
  return ((void*)0);
 }

 iter = kcdata_iter(exit_reason->osr_kcd_buf, exit_reason->osr_bufsize);
 if (!kcdata_iter_valid(iter)) {



  return ((void*)0);
 }

 if (kcdata_iter_type(iter) != KCDATA_BUFFER_BEGIN_OS_REASON) {




  return ((void*)0);
 }

 iter = kcdata_iter_find_type(iter, EXIT_REASON_USER_DESC);
 if (!kcdata_iter_valid(iter)) {
  return ((void*)0);
 }

 return (char *)kcdata_iter_payload(iter);
}
