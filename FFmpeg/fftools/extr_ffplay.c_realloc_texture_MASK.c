#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ Uint32 ;
typedef  int /*<<< orphan*/  SDL_Texture ;
typedef  int /*<<< orphan*/  SDL_BlendMode ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__*,int*,int*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_TEXTUREACCESS_STREAMING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  renderer ; 

__attribute__((used)) static int FUNC9(SDL_Texture **texture, Uint32 new_format, int new_width, int new_height, SDL_BlendMode blendmode, int init_texture)
{
    Uint32 format;
    int access, w, h;
    if (!*texture || FUNC4(*texture, &format, &access, &w, &h) < 0 || new_width != w || new_height != h || new_format != format) {
        void *pixels;
        int pitch;
        if (*texture)
            FUNC1(*texture);
        if (!(*texture = FUNC0(renderer, new_format, SDL_TEXTUREACCESS_STREAMING, new_width, new_height)))
            return -1;
        if (FUNC5(*texture, blendmode) < 0)
            return -1;
        if (init_texture) {
            if (FUNC3(*texture, NULL, &pixels, &pitch) < 0)
                return -1;
            FUNC8(pixels, 0, pitch * new_height);
            FUNC6(*texture);
        }
        FUNC7(NULL, AV_LOG_VERBOSE, "Created %dx%d texture with %s.\n", new_width, new_height, FUNC2(new_format));
    }
    return 0;
}