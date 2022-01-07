
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ledger_entry_info {int lei_refill_period; int lei_limit; int lei_last_refill; int lei_balance; } ;


 int DBG_MACH ;
 int DBG_MACH_RESOURCE ;
 int KDBG_CODE (int ,int ,int ) ;
 int KERNEL_DBG_IST_SANE (int ,int ,int ,int ,int ) ;

void
trace_resource_violation(uint16_t code,
                         struct ledger_entry_info *linfo)
{
 KERNEL_DBG_IST_SANE(KDBG_CODE(DBG_MACH, DBG_MACH_RESOURCE, code),
                     linfo->lei_balance, linfo->lei_last_refill,
                     linfo->lei_limit, linfo->lei_refill_period);
}
