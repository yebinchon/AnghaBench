
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * j_orient_vlc; int j_ac_vlc; int j_dc_vlc; } ;
typedef TYPE_1__ IntraX8Context ;


 int memset (int ,int ,int) ;

__attribute__((used)) static void x8_reset_vlc_tables(IntraX8Context *w)
{
    memset(w->j_dc_vlc, 0, sizeof(w->j_dc_vlc));
    memset(w->j_ac_vlc, 0, sizeof(w->j_ac_vlc));
    w->j_orient_vlc = ((void*)0);
}
