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
struct TYPE_3__ {int /*<<< orphan*/  decoder_tid; int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ Decoder ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int (*) (void*),char const*,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(Decoder *d, int (*fn)(void *), const char *thread_name, void* arg)
{
    FUNC4(d->queue);
    d->decoder_tid = FUNC1(fn, thread_name, arg);
    if (!d->decoder_tid) {
        FUNC3(NULL, AV_LOG_ERROR, "SDL_CreateThread(): %s\n", FUNC2());
        return FUNC0(ENOMEM);
    }
    return 0;
}