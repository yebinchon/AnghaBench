
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int emulated_edge_mc; } ;
typedef TYPE_1__ VideoDSPContext ;


 int check_emu_edge (int ) ;
 scalar_t__ check_func (int ,char*) ;
 int ff_videodsp_init (TYPE_1__*,int) ;
 int report (char*) ;
 int uint8_t ;

void checkasm_check_videodsp(void)
{
    VideoDSPContext vdsp;

    ff_videodsp_init(&vdsp, 8);
    if (check_func(vdsp.emulated_edge_mc, "emulated_edge_mc_8"))
        check_emu_edge(uint8_t);

    report("emulated_edge_mc");
}
