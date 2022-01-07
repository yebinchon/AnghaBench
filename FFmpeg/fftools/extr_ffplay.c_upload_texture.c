
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct SwsContext {int dummy; } ;
typedef int Uint32 ;
struct TYPE_3__ {int* data; int* linesize; int height; int width; int format; } ;
typedef int SDL_Texture ;
typedef int SDL_BlendMode ;
typedef TYPE_1__ AVFrame ;


 int AV_CEIL_RSHIFT (int ,int) ;
 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 int AV_PIX_FMT_BGRA ;
 int SDL_LockTexture (int *,int *,void**,int*) ;
 int SDL_PIXELFORMAT_ARGB8888 ;


 int SDL_UnlockTexture (int *) ;
 int SDL_UpdateTexture (int *,int *,int,int) ;
 int SDL_UpdateYUVTexture (int *,int *,int,int,int,int,int,int) ;
 int av_log (int *,int ,char*) ;
 int get_sdl_pix_fmt_and_blendmode (int ,int*,int *) ;
 scalar_t__ realloc_texture (int **,int,int ,int ,int ,int ) ;
 int sws_flags ;
 struct SwsContext* sws_getCachedContext (struct SwsContext*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *) ;
 int sws_scale (struct SwsContext*,int const* const*,int*,int ,int ,int **,int*) ;

__attribute__((used)) static int upload_texture(SDL_Texture **tex, AVFrame *frame, struct SwsContext **img_convert_ctx) {
    int ret = 0;
    Uint32 sdl_pix_fmt;
    SDL_BlendMode sdl_blendmode;
    get_sdl_pix_fmt_and_blendmode(frame->format, &sdl_pix_fmt, &sdl_blendmode);
    if (realloc_texture(tex, sdl_pix_fmt == 128 ? SDL_PIXELFORMAT_ARGB8888 : sdl_pix_fmt, frame->width, frame->height, sdl_blendmode, 0) < 0)
        return -1;
    switch (sdl_pix_fmt) {
        case 128:

            *img_convert_ctx = sws_getCachedContext(*img_convert_ctx,
                frame->width, frame->height, frame->format, frame->width, frame->height,
                AV_PIX_FMT_BGRA, sws_flags, ((void*)0), ((void*)0), ((void*)0));
            if (*img_convert_ctx != ((void*)0)) {
                uint8_t *pixels[4];
                int pitch[4];
                if (!SDL_LockTexture(*tex, ((void*)0), (void **)pixels, pitch)) {
                    sws_scale(*img_convert_ctx, (const uint8_t * const *)frame->data, frame->linesize,
                              0, frame->height, pixels, pitch);
                    SDL_UnlockTexture(*tex);
                }
            } else {
                av_log(((void*)0), AV_LOG_FATAL, "Cannot initialize the conversion context\n");
                ret = -1;
            }
            break;
        case 129:
            if (frame->linesize[0] > 0 && frame->linesize[1] > 0 && frame->linesize[2] > 0) {
                ret = SDL_UpdateYUVTexture(*tex, ((void*)0), frame->data[0], frame->linesize[0],
                                                       frame->data[1], frame->linesize[1],
                                                       frame->data[2], frame->linesize[2]);
            } else if (frame->linesize[0] < 0 && frame->linesize[1] < 0 && frame->linesize[2] < 0) {
                ret = SDL_UpdateYUVTexture(*tex, ((void*)0), frame->data[0] + frame->linesize[0] * (frame->height - 1), -frame->linesize[0],
                                                       frame->data[1] + frame->linesize[1] * (AV_CEIL_RSHIFT(frame->height, 1) - 1), -frame->linesize[1],
                                                       frame->data[2] + frame->linesize[2] * (AV_CEIL_RSHIFT(frame->height, 1) - 1), -frame->linesize[2]);
            } else {
                av_log(((void*)0), AV_LOG_ERROR, "Mixed negative and positive linesizes are not supported.\n");
                return -1;
            }
            break;
        default:
            if (frame->linesize[0] < 0) {
                ret = SDL_UpdateTexture(*tex, ((void*)0), frame->data[0] + frame->linesize[0] * (frame->height - 1), -frame->linesize[0]);
            } else {
                ret = SDL_UpdateTexture(*tex, ((void*)0), frame->data[0], frame->linesize[0]);
            }
            break;
    }
    return ret;
}
