
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Uint32 ;
struct TYPE_3__ {int format; int texture_fmt; } ;
typedef int SDL_BlendMode ;


 int AV_PIX_FMT_BGR32 ;
 int AV_PIX_FMT_BGR32_1 ;
 int AV_PIX_FMT_RGB32 ;
 int AV_PIX_FMT_RGB32_1 ;
 int FF_ARRAY_ELEMS (TYPE_1__*) ;
 int SDL_BLENDMODE_BLEND ;
 int SDL_BLENDMODE_NONE ;
 int SDL_PIXELFORMAT_UNKNOWN ;
 TYPE_1__* sdl_texture_format_map ;

__attribute__((used)) static void get_sdl_pix_fmt_and_blendmode(int format, Uint32 *sdl_pix_fmt, SDL_BlendMode *sdl_blendmode)
{
    int i;
    *sdl_blendmode = SDL_BLENDMODE_NONE;
    *sdl_pix_fmt = SDL_PIXELFORMAT_UNKNOWN;
    if (format == AV_PIX_FMT_RGB32 ||
        format == AV_PIX_FMT_RGB32_1 ||
        format == AV_PIX_FMT_BGR32 ||
        format == AV_PIX_FMT_BGR32_1)
        *sdl_blendmode = SDL_BLENDMODE_BLEND;
    for (i = 0; i < FF_ARRAY_ELEMS(sdl_texture_format_map) - 1; i++) {
        if (format == sdl_texture_format_map[i].format) {
            *sdl_pix_fmt = sdl_texture_format_map[i].texture_fmt;
            return;
        }
    }
}
