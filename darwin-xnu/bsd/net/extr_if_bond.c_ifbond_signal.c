
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* ifbond_ref ;
typedef int caddr_t ;
struct TYPE_6__ {scalar_t__ verbose; } ;
struct TYPE_5__ {char* ifb_name; } ;


 TYPE_4__* g_bond ;
 int ifbond_flags_clear_change_in_progress (TYPE_1__*) ;
 int printf (char*,char*,char const*) ;
 int wakeup (int ) ;

__attribute__((used)) static void
ifbond_signal(ifbond_ref ifb, const char * msg)
{
    ifbond_flags_clear_change_in_progress(ifb);
    wakeup((caddr_t)ifb);
    if (g_bond->verbose) {
 printf("%s: %s wakeup\n", ifb->ifb_name, msg);
    }
    return;
}
