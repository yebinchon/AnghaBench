
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ r_cs; scalar_t__ r_ds; scalar_t__ r_es; scalar_t__ r_fs; scalar_t__ r_gs; scalar_t__ r_ss; } ;
typedef TYPE_1__ x86_saved_state_t ;
struct TYPE_12__ {scalar_t__ usd_dpl; int usd_p; scalar_t__ usd_type; scalar_t__ usd_def32; scalar_t__ usd_gran; } ;
typedef TYPE_2__ user_desc_t ;
typedef uintptr_t user_addr_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_13__ {scalar_t__ p_ldtlimit; TYPE_2__* p_ldt; } ;
typedef TYPE_3__ proc_t ;
struct TYPE_14__ {int ftt_segment; } ;
typedef TYPE_4__ fasttrap_tracepoint_t ;
 scalar_t__ NGDT ;
 int PAGESIZE ;
 scalar_t__ SELISLDT (scalar_t__) ;
 int SELISUPL (scalar_t__) ;
 scalar_t__ SELTOIDX (scalar_t__) ;
 scalar_t__ SEL_UPL ;
 scalar_t__ USEGD_GETBASE (TYPE_2__*) ;
 int USEGD_GETLIMIT (TYPE_2__*) ;
 TYPE_2__* cpu_get_gdt () ;
 TYPE_3__* curproc ;
 int printf (char*) ;

__attribute__((used)) static int
fasttrap_do_seg(fasttrap_tracepoint_t *tp, x86_saved_state_t *rp, user_addr_t *addr)
{
#pragma unused(tp, rp, addr)
 printf("fasttrap_do_seg() called while unimplemented.\n");
 return (0);
}
