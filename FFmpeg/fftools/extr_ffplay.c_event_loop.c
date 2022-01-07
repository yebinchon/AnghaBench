
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef double uint64_t ;
typedef int int64_t ;
struct TYPE_29__ {double width; int force_refresh; int * vis_texture; int height; TYPE_6__* ic; scalar_t__ seek_pos; int sampq; int audio_stream; int pictq; int video_stream; int vfilter_idx; int show_mode; } ;
typedef TYPE_7__ VideoState ;
struct TYPE_23__ {double data1; int data2; int event; } ;
struct TYPE_27__ {int state; double x; } ;
struct TYPE_26__ {double x; int button; } ;
struct TYPE_24__ {int sym; } ;
struct TYPE_25__ {TYPE_2__ keysym; } ;
struct TYPE_30__ {int type; TYPE_1__ window; TYPE_5__ motion; TYPE_4__ button; TYPE_3__ key; } ;
struct TYPE_28__ {int nb_chapters; double bit_rate; int start_time; double duration; int pb; } ;
typedef TYPE_8__ SDL_Event ;


 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_INFO ;
 int AV_NOPTS_VALUE ;
 double AV_TIME_BASE ;




 int SDLK_ESCAPE ;
 int SDLK_q ;




 int SDL_BUTTON_LEFT ;
 int SDL_BUTTON_RIGHT ;
 int SDL_BUTTON_RMASK ;
 int SDL_DestroyTexture (int *) ;




 int SDL_ShowCursor (int) ;
 int SDL_VOLUME_STEP ;



 int SHOW_MODE_VIDEO ;
 int av_gettime_relative () ;
 int av_log (int *,int ,char*,double,int,int,int,int,int,int) ;
 double avio_size (int ) ;
 double avio_tell (int ) ;
 int cursor_hidden ;
 int cursor_last_shown ;
 int do_exit (TYPE_7__*) ;
 int exit_on_keydown ;
 int exit_on_mousedown ;
 double frame_queue_last_pos (int *) ;
 double get_master_clock (TYPE_7__*) ;
 int isnan (double) ;
 int nb_vfilters ;
 int refresh_loop_wait_event (TYPE_7__*,TYPE_8__*) ;
 int screen_height ;
 double screen_width ;
 int seek_by_bytes ;
 int seek_chapter (TYPE_7__*,int) ;
 double seek_interval ;
 int step_to_next_frame (TYPE_7__*) ;
 int stream_cycle_channel (TYPE_7__*,int ) ;
 int stream_seek (TYPE_7__*,int,int,int) ;
 int toggle_audio_display (TYPE_7__*) ;
 int toggle_full_screen (TYPE_7__*) ;
 int toggle_mute (TYPE_7__*) ;
 int toggle_pause (TYPE_7__*) ;
 int update_volume (TYPE_7__*,int,int ) ;

__attribute__((used)) static void event_loop(VideoState *cur_stream)
{
    SDL_Event event;
    double incr, pos, frac;

    for (;;) {
        double x;
        refresh_loop_wait_event(cur_stream, &event);
        switch (event.type) {
        case 134:
            if (exit_on_keydown || event.key.keysym.sym == SDLK_ESCAPE || event.key.keysym.sym == SDLK_q) {
                do_exit(cur_stream);
                break;
            }

            if (!cur_stream->width)
                continue;
            switch (event.key.keysym.sym) {
            case 141:
                toggle_full_screen(cur_stream);
                cur_stream->force_refresh = 1;
                break;
            case 139:
            case 145:
                toggle_pause(cur_stream);
                break;
            case 140:
                toggle_mute(cur_stream);
                break;
            case 150:
            case 154:
                update_volume(cur_stream, 1, SDL_VOLUME_STEP);
                break;
            case 151:
            case 153:
                update_volume(cur_stream, -1, SDL_VOLUME_STEP);
                break;
            case 138:
                step_to_next_frame(cur_stream);
                break;
            case 143:
                stream_cycle_channel(cur_stream, AVMEDIA_TYPE_AUDIO);
                break;
            case 136:
                stream_cycle_channel(cur_stream, AVMEDIA_TYPE_VIDEO);
                break;
            case 142:
                stream_cycle_channel(cur_stream, AVMEDIA_TYPE_VIDEO);
                stream_cycle_channel(cur_stream, AVMEDIA_TYPE_AUDIO);
                stream_cycle_channel(cur_stream, AVMEDIA_TYPE_SUBTITLE);
                break;
            case 137:
                stream_cycle_channel(cur_stream, AVMEDIA_TYPE_SUBTITLE);
                break;
            case 135:
                toggle_audio_display(cur_stream);

                break;
            case 147:
                if (cur_stream->ic->nb_chapters <= 1) {
                    incr = 600.0;
                    goto do_seek;
                }
                seek_chapter(cur_stream, 1);
                break;
            case 148:
                if (cur_stream->ic->nb_chapters <= 1) {
                    incr = -600.0;
                    goto do_seek;
                }
                seek_chapter(cur_stream, -1);
                break;
            case 149:
                incr = seek_interval ? -seek_interval : -10.0;
                goto do_seek;
            case 146:
                incr = seek_interval ? seek_interval : 10.0;
                goto do_seek;
            case 144:
                incr = 60.0;
                goto do_seek;
            case 152:
                incr = -60.0;
            do_seek:
                    if (seek_by_bytes) {
                        pos = -1;
                        if (pos < 0 && cur_stream->video_stream >= 0)
                            pos = frame_queue_last_pos(&cur_stream->pictq);
                        if (pos < 0 && cur_stream->audio_stream >= 0)
                            pos = frame_queue_last_pos(&cur_stream->sampq);
                        if (pos < 0)
                            pos = avio_tell(cur_stream->ic->pb);
                        if (cur_stream->ic->bit_rate)
                            incr *= cur_stream->ic->bit_rate / 8.0;
                        else
                            incr *= 180000.0;
                        pos += incr;
                        stream_seek(cur_stream, pos, incr, 1);
                    } else {
                        pos = get_master_clock(cur_stream);
                        if (isnan(pos))
                            pos = (double)cur_stream->seek_pos / AV_TIME_BASE;
                        pos += incr;
                        if (cur_stream->ic->start_time != AV_NOPTS_VALUE && pos < cur_stream->ic->start_time / (double)AV_TIME_BASE)
                            pos = cur_stream->ic->start_time / (double)AV_TIME_BASE;
                        stream_seek(cur_stream, (int64_t)(pos * AV_TIME_BASE), (int64_t)(incr * AV_TIME_BASE), 0);
                    }
                break;
            default:
                break;
            }
            break;
        case 133:
            if (exit_on_mousedown) {
                do_exit(cur_stream);
                break;
            }
            if (event.button.button == SDL_BUTTON_LEFT) {
                static int64_t last_mouse_left_click = 0;
                if (av_gettime_relative() - last_mouse_left_click <= 500000) {
                    toggle_full_screen(cur_stream);
                    cur_stream->force_refresh = 1;
                    last_mouse_left_click = 0;
                } else {
                    last_mouse_left_click = av_gettime_relative();
                }
            }
        case 132:
            if (cursor_hidden) {
                SDL_ShowCursor(1);
                cursor_hidden = 0;
            }
            cursor_last_shown = av_gettime_relative();
            if (event.type == 133) {
                if (event.button.button != SDL_BUTTON_RIGHT)
                    break;
                x = event.button.x;
            } else {
                if (!(event.motion.state & SDL_BUTTON_RMASK))
                    break;
                x = event.motion.x;
            }
                if (seek_by_bytes || cur_stream->ic->duration <= 0) {
                    uint64_t size = avio_size(cur_stream->ic->pb);
                    stream_seek(cur_stream, size*x/cur_stream->width, 0, 1);
                } else {
                    int64_t ts;
                    int ns, hh, mm, ss;
                    int tns, thh, tmm, tss;
                    tns = cur_stream->ic->duration / 1000000LL;
                    thh = tns / 3600;
                    tmm = (tns % 3600) / 60;
                    tss = (tns % 60);
                    frac = x / cur_stream->width;
                    ns = frac * tns;
                    hh = ns / 3600;
                    mm = (ns % 3600) / 60;
                    ss = (ns % 60);
                    av_log(((void*)0), AV_LOG_INFO,
                           "Seek to %2.0f%% (%2d:%02d:%02d) of total duration (%2d:%02d:%02d)       \n", frac*100,
                            hh, mm, ss, thh, tmm, tss);
                    ts = frac * cur_stream->ic->duration;
                    if (cur_stream->ic->start_time != AV_NOPTS_VALUE)
                        ts += cur_stream->ic->start_time;
                    stream_seek(cur_stream, ts, 0, 0);
                }
            break;
        case 130:
            switch (event.window.event) {
                case 128:
                    screen_width = cur_stream->width = event.window.data1;
                    screen_height = cur_stream->height = event.window.data2;
                    if (cur_stream->vis_texture) {
                        SDL_DestroyTexture(cur_stream->vis_texture);
                        cur_stream->vis_texture = ((void*)0);
                    }
                case 129:
                    cur_stream->force_refresh = 1;
            }
            break;
        case 131:
        case 155:
            do_exit(cur_stream);
            break;
        default:
            break;
        }
    }
}
