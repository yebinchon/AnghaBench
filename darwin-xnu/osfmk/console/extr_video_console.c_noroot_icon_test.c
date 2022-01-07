
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int PE_display_icon (int ,char*) ;
 int vc_progress_enable ;

void noroot_icon_test(void) {
    boolean_t o_vc_progress_enable = vc_progress_enable;

    vc_progress_enable = 1;

    PE_display_icon( 0, "noroot");

    vc_progress_enable = o_vc_progress_enable;
}
