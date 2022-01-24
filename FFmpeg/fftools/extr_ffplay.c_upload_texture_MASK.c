#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct SwsContext {int dummy; } ;
typedef  int Uint32 ;
struct TYPE_3__ {int* data; int* linesize; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
typedef  int /*<<< orphan*/  SDL_Texture ;
typedef  int /*<<< orphan*/  SDL_BlendMode ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_PIX_FMT_BGRA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int*) ; 
 int SDL_PIXELFORMAT_ARGB8888 ; 
#define  SDL_PIXELFORMAT_IYUV 129 
#define  SDL_PIXELFORMAT_UNKNOWN 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sws_flags ; 
 struct SwsContext* FUNC8 (struct SwsContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct SwsContext*,int /*<<< orphan*/  const* const*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 

__attribute__((used)) static int FUNC10(SDL_Texture **tex, AVFrame *frame, struct SwsContext **img_convert_ctx) {
    int ret = 0;
    Uint32 sdl_pix_fmt;
    SDL_BlendMode sdl_blendmode;
    FUNC6(frame->format, &sdl_pix_fmt, &sdl_blendmode);
    if (FUNC7(tex, sdl_pix_fmt == SDL_PIXELFORMAT_UNKNOWN ? SDL_PIXELFORMAT_ARGB8888 : sdl_pix_fmt, frame->width, frame->height, sdl_blendmode, 0) < 0)
        return -1;
    switch (sdl_pix_fmt) {
        case SDL_PIXELFORMAT_UNKNOWN:
            /* This should only happen if we are not using avfilter... */
            *img_convert_ctx = FUNC8(*img_convert_ctx,
                frame->width, frame->height, frame->format, frame->width, frame->height,
                AV_PIX_FMT_BGRA, sws_flags, NULL, NULL, NULL);
            if (*img_convert_ctx != NULL) {
                uint8_t *pixels[4];
                int pitch[4];
                if (!FUNC1(*tex, NULL, (void **)pixels, pitch)) {
                    FUNC9(*img_convert_ctx, (const uint8_t * const *)frame->data, frame->linesize,
                              0, frame->height, pixels, pitch);
                    FUNC2(*tex);
                }
            } else {
                FUNC5(NULL, AV_LOG_FATAL, "Cannot initialize the conversion context\n");
                ret = -1;
            }
            break;
        case SDL_PIXELFORMAT_IYUV:
            if (frame->linesize[0] > 0 && frame->linesize[1] > 0 && frame->linesize[2] > 0) {
                ret = FUNC4(*tex, NULL, frame->data[0], frame->linesize[0],
                                                       frame->data[1], frame->linesize[1],
                                                       frame->data[2], frame->linesize[2]);
            } else if (frame->linesize[0] < 0 && frame->linesize[1] < 0 && frame->linesize[2] < 0) {
                ret = FUNC4(*tex, NULL, frame->data[0] + frame->linesize[0] * (frame->height                    - 1), -frame->linesize[0],
                                                       frame->data[1] + frame->linesize[1] * (FUNC0(frame->height, 1) - 1), -frame->linesize[1],
                                                       frame->data[2] + frame->linesize[2] * (FUNC0(frame->height, 1) - 1), -frame->linesize[2]);
            } else {
                FUNC5(NULL, AV_LOG_ERROR, "Mixed negative and positive linesizes are not supported.\n");
                return -1;
            }
            break;
        default:
            if (frame->linesize[0] < 0) {
                ret = FUNC3(*tex, NULL, frame->data[0] + frame->linesize[0] * (frame->height - 1), -frame->linesize[0]);
            } else {
                ret = FUNC3(*tex, NULL, frame->data[0], frame->linesize[0]);
            }
            break;
    }
    return ret;
}