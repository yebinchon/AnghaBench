
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int mach_msg_header_t ;


 int proc_importance_assertion_begin_with_msg (int *,int *,int *) ;

int
proc_denap_assertion_begin_with_msg(mach_msg_header_t *msg,
        uint64_t *assertion_token)
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
 return proc_importance_assertion_begin_with_msg(msg, ((void*)0), assertion_token);
#pragma clang diagnostic pop
}
