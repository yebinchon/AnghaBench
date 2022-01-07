
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPV_FORMAT_INT64 ;
 int RETRO_LOG_INFO ;
 int log_cb (int ,char*) ;
 int mpv ;
 int mpv_get_property (int ,char*,int ,int *) ;
 int mpv_gl ;
 int mpv_render_context_free (int ) ;
 int mpv_terminate_destroy (int ) ;
 int playback_time ;

__attribute__((used)) static void context_destroy(void)
{
 mpv_get_property(mpv, "playback-time", MPV_FORMAT_INT64, &playback_time);
 mpv_render_context_free(mpv_gl);
 mpv_terminate_destroy(mpv);
 log_cb(RETRO_LOG_INFO, "Context destroyed.\n");
}
