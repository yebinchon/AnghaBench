#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  inited; int /*<<< orphan*/ * window; int /*<<< orphan*/ * renderer; int /*<<< orphan*/ * texture; } ;
typedef  TYPE_1__ SDLContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    SDLContext *sdl = s->priv_data;

    if (sdl->texture)
        FUNC1(sdl->texture);
    sdl->texture = NULL;

    if (sdl->renderer)
        FUNC0(sdl->renderer);
    sdl->renderer = NULL;

    if (sdl->window)
        FUNC2(sdl->window);
    sdl->window = NULL;

    if (!sdl->inited)
        FUNC3();

    return 0;
}