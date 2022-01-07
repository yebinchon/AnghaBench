
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ifbond_ref ;
struct TYPE_8__ {scalar_t__ verbose; } ;
struct TYPE_7__ {char* ifb_name; } ;


 int PZERO ;
 int bond_lck_mtx ;
 TYPE_6__* g_bond ;
 scalar_t__ ifbond_flags_change_in_progress (TYPE_1__*) ;
 int ifbond_flags_set_change_in_progress (TYPE_1__*) ;
 int msleep (TYPE_1__*,int ,int ,char const*,int ) ;
 int printf (char*,char*,char const*) ;

__attribute__((used)) static void
ifbond_wait(ifbond_ref ifb, const char * msg)
{
    int waited = 0;


    while (ifbond_flags_change_in_progress(ifb)) {
 if (g_bond->verbose) {
     printf("%s: %s msleep\n", ifb->ifb_name, msg);
 }
 waited = 1;
 (void)msleep(ifb, bond_lck_mtx, PZERO, msg, 0);
    }

    ifbond_flags_set_change_in_progress(ifb);
    if (g_bond->verbose && waited) {
 printf("%s: %s woke up\n", ifb->ifb_name, msg);
    }
    return;
}
