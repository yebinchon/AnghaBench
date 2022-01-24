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
struct TYPE_4__ {struct TYPE_4__* codec_name; int /*<<< orphan*/ * surface; int /*<<< orphan*/ * format; int /*<<< orphan*/ * codec; int /*<<< orphan*/  refcount; } ;
typedef  TYPE_1__ MediaCodecDecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(MediaCodecDecContext *s)
{
    if (!s)
        return;

    if (FUNC0(&s->refcount, 1) == 1) {
        if (s->codec) {
            FUNC2(s->codec);
            s->codec = NULL;
        }

        if (s->format) {
            FUNC3(s->format);
            s->format = NULL;
        }

        if (s->surface) {
            FUNC4(s->surface, NULL);
            s->surface = NULL;
        }

        FUNC1(&s->codec_name);
        FUNC1(&s);
    }
}