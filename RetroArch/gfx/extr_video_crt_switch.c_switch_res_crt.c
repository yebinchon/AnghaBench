
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crt_center_adjust ;
 int crt_index ;
 int crt_rpi_switch (unsigned int,unsigned int,int ,int ) ;
 int crt_switch_driver_reinit () ;
 int ra_core_hz ;
 int ra_set_core_hz ;
 int video_display_server_set_resolution (unsigned int,unsigned int,int ,int ,int ,int ,int ) ;
 int video_driver_apply_state_changes () ;
 int video_monitor_set_refresh_rate (int ) ;

__attribute__((used)) static void switch_res_crt(unsigned width, unsigned height)
{
   video_display_server_set_resolution(width, height,
         ra_set_core_hz, ra_core_hz, crt_center_adjust, crt_index, crt_center_adjust);





   video_driver_apply_state_changes();
}
