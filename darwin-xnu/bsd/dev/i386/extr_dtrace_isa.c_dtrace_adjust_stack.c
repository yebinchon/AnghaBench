
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ user_addr_t ;
typedef int uint64_t ;
typedef scalar_t__ int64_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {size_t cpu_id; } ;
struct TYPE_3__ {scalar_t__ cpuc_missing_tos; } ;


 int ASSERT (int ) ;
 TYPE_2__* CPU ;
 int CPU_DTRACE_ENTRY ;
 scalar_t__ DTRACE_CPUFLAG_ISSET (int ) ;
 TYPE_1__* cpu_core ;
 int current_proc () ;
 scalar_t__ dtrace_fuword32 (scalar_t__) ;
 scalar_t__ dtrace_fuword64 (scalar_t__) ;
 scalar_t__ proc_is64bit (int ) ;

__attribute__((used)) static int
dtrace_adjust_stack(uint64_t **pcstack, int *pcstack_limit, user_addr_t *pc,
                    user_addr_t sp)
{
    int64_t missing_tos;
    int rc = 0;
    boolean_t is64Bit = proc_is64bit(current_proc());

    ASSERT(pc != ((void*)0));

    if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_ENTRY)) {
        missing_tos = *pc;

        if (is64Bit)
            *pc = dtrace_fuword64(sp);
        else
            *pc = dtrace_fuword32(sp);
    } else {
        missing_tos = cpu_core[CPU->cpu_id].cpuc_missing_tos;
    }

    if (missing_tos != 0) {
        if (pcstack != ((void*)0) && pcstack_limit != ((void*)0)) {




     *(*pcstack)++ = missing_tos;
     (*pcstack_limit)--;
 }





         rc = 1;
    }
    return rc;
}
