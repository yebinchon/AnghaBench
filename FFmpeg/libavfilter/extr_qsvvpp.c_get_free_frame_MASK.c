#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  surface; } ;
typedef  TYPE_1__ QSVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static QSVFrame *FUNC2(QSVFrame **list)
{
    QSVFrame *out = *list;

    for (; out; out = out->next) {
        if (!out->surface)
            break;
    }

    if (!out) {
        out = FUNC1(sizeof(*out));
        if (!out) {
            FUNC0(NULL, AV_LOG_ERROR, "Can't alloc new output frame.\n");
            return NULL;
        }
        out->next  = *list;
        *list      = out;
    }

    return out;
}