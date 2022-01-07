
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;


 int audio_refresh_list_ui (int *) ;
 int ghb_sanitize_audio_tracks (int *) ;
 int ghb_update_summary_info (int *) ;

void
ghb_audio_list_refresh_all(signal_user_data_t *ud)
{
    ghb_sanitize_audio_tracks(ud);
    audio_refresh_list_ui(ud);
    ghb_update_summary_info(ud);
}
