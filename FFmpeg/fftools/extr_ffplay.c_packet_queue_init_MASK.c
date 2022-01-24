#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int abort_request; int /*<<< orphan*/  cond; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ PacketQueue ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(PacketQueue *q)
{
    FUNC5(q, 0, sizeof(PacketQueue));
    q->mutex = FUNC2();
    if (!q->mutex) {
        FUNC4(NULL, AV_LOG_FATAL, "SDL_CreateMutex(): %s\n", FUNC3());
        return FUNC0(ENOMEM);
    }
    q->cond = FUNC1();
    if (!q->cond) {
        FUNC4(NULL, AV_LOG_FATAL, "SDL_CreateCond(): %s\n", FUNC3());
        return FUNC0(ENOMEM);
    }
    q->abort_request = 1;
    return 0;
}