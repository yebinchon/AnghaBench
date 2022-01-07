
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32 ;


 int Vdp2DrawBackScreen () ;
 int Vdp2DrawLineColorScreen () ;
 void* cur_addr ;
 void* cur_vdp2 ;
 int pvr_scene_begin () ;
 int pvr_wait_ready () ;
 scalar_t__ tex_space ;
 scalar_t__ vdp2_tex ;

__attribute__((used)) static void VIDDCVdp2DrawStart(void) {
    cur_addr = (uint32) tex_space;
    cur_vdp2 = (uint32) vdp2_tex;

    pvr_wait_ready();
    pvr_scene_begin();

    Vdp2DrawBackScreen();
    Vdp2DrawLineColorScreen();
}
