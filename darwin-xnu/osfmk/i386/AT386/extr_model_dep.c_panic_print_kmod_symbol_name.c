
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_address_t ;
typedef scalar_t__ u_int ;
typedef int kernel_mach_header_t ;
struct TYPE_4__ {scalar_t__ numSummaries; TYPE_1__* summaries; } ;
struct TYPE_3__ {scalar_t__ address; scalar_t__ size; int name; } ;
typedef TYPE_1__ OSKextLoadedKextSummary ;


 TYPE_2__* gLoadedKextSummaries ;
 scalar_t__ panic_print_macho_symbol_name (int *,scalar_t__,int ) ;
 int paniclog_append_noflush (char*,int ,scalar_t__) ;

__attribute__((used)) static void
panic_print_kmod_symbol_name(vm_address_t search)
{
    u_int i;

    if (gLoadedKextSummaries == ((void*)0))
     return;
    for (i = 0; i < gLoadedKextSummaries->numSummaries; ++i) {
        OSKextLoadedKextSummary *summary = gLoadedKextSummaries->summaries + i;

        if ((search >= summary->address) &&
            (search < (summary->address + summary->size)))
        {
            kernel_mach_header_t *header = (kernel_mach_header_t *)(uintptr_t) summary->address;
            if (panic_print_macho_symbol_name(header, search, summary->name) == 0) {
                paniclog_append_noflush("%s + %llu", summary->name, (unsigned long)search - summary->address);
            }
            break;
        }
    }
}
