
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_23__ {int height; int width; int format; } ;
struct TYPE_22__ {TYPE_1__** streams; TYPE_6__* priv_data; } ;
struct TYPE_21__ {int data; } ;
struct TYPE_20__ {int texture_fmt; int renderer; int texture_rect; int texture; scalar_t__ enable_quit_action; int window_height; int window_width; } ;
struct TYPE_18__ {int data2; int data1; int event; } ;
struct TYPE_16__ {int sym; } ;
struct TYPE_17__ {TYPE_2__ keysym; } ;
struct TYPE_19__ {int type; TYPE_4__ window; TYPE_3__ key; } ;
struct TYPE_15__ {TYPE_9__* codecpar; } ;
typedef TYPE_5__ SDL_Event ;
typedef TYPE_6__ SDLContext ;
typedef TYPE_7__ AVPacket ;
typedef TYPE_8__ AVFormatContext ;
typedef TYPE_9__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AV_LOG_FATAL ;
 int EIO ;
 scalar_t__ SDL_PollEvent (TYPE_5__*) ;

 int SDL_RenderClear (int ) ;
 int SDL_RenderCopy (int ,int ,int *,int *) ;
 int SDL_RenderPresent (int ) ;
 int SDL_UpdateTexture (int ,int *,int *,int) ;
 int SDL_UpdateYUVTexture (int ,int *,int *,int,int *,int,int *,int) ;



 int av_image_fill_arrays (int **,int*,int ,int ,int ,int ,int) ;
 int av_log (int *,int ,char*) ;
 int compute_texture_rect (TYPE_8__*) ;
 int sdl2_write_trailer (TYPE_8__*) ;

__attribute__((used)) static int sdl2_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    int ret, quit = 0;
    SDLContext *sdl = s->priv_data;
    AVCodecParameters *codecpar = s->streams[0]->codecpar;
    uint8_t *data[4];
    int linesize[4];

    SDL_Event event;
    if (SDL_PollEvent(&event)){
        switch (event.type) {
        case 151:
            switch (event.key.keysym.sym) {
            case 153:
            case 152:
                quit = 1;
                break;
            default:
                break;
            }
            break;
        case 131:
            quit = 1;
            break;
        case 130:
            switch(event.window.event){
            case 129:
            case 128:
                sdl->window_width = event.window.data1;
                sdl->window_height = event.window.data2;
                compute_texture_rect(s);
                break;
            default:
                break;
            }
            break;
        default:
            break;
        }
    }

    if (quit && sdl->enable_quit_action) {
        sdl2_write_trailer(s);
        return AVERROR(EIO);
    }

    av_image_fill_arrays(data, linesize, pkt->data, codecpar->format, codecpar->width, codecpar->height, 1);
    switch (sdl->texture_fmt) {
    case 142:
    case 132:
    case 133:
        ret = SDL_UpdateYUVTexture(sdl->texture, ((void*)0),
                                   data[0], linesize[0],
                                   data[1], linesize[1],
                                   data[2], linesize[2]);
        break;
    case 140:
    case 139:
    case 138:
    case 147:
    case 137:
    case 146:
    case 141:
    case 148:
    case 136:
    case 134:
    case 145:
    case 143:
    case 149:
    case 135:
    case 150:
    case 144:
        ret = SDL_UpdateTexture(sdl->texture, ((void*)0), data[0], linesize[0]);
        break;
    default:
        av_log(((void*)0), AV_LOG_FATAL, "Unsupported pixel format\n");
        ret = -1;
        break;
    }
    SDL_RenderClear(sdl->renderer);
    SDL_RenderCopy(sdl->renderer, sdl->texture, ((void*)0), &sdl->texture_rect);
    SDL_RenderPresent(sdl->renderer);
    return ret;
}
