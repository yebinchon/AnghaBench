
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VideoState ;


 int AV_LOG_QUIET ;
 int SDL_DestroyRenderer (scalar_t__) ;
 int SDL_DestroyWindow (scalar_t__) ;
 int SDL_Quit () ;
 int av_freep (int *) ;
 int av_log (int *,int ,char*,char*) ;
 int avformat_network_deinit () ;
 int exit (int ) ;
 int printf (char*) ;
 scalar_t__ renderer ;
 scalar_t__ show_status ;
 int stream_close (int *) ;
 int uninit_opts () ;
 int vfilters_list ;
 scalar_t__ window ;

__attribute__((used)) static void do_exit(VideoState *is)
{
    if (is) {
        stream_close(is);
    }
    if (renderer)
        SDL_DestroyRenderer(renderer);
    if (window)
        SDL_DestroyWindow(window);
    uninit_opts();



    avformat_network_deinit();
    if (show_status)
        printf("\n");
    SDL_Quit();
    av_log(((void*)0), AV_LOG_QUIET, "%s", "");
    exit(0);
}
