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
struct TYPE_4__ {scalar_t__ den; } ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_1__ AVRational ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (TYPE_1__) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s, AVStream *st)
{
    AVRational rational_framerate = FUNC1(s, st);
    int rate = 0;
    if (rational_framerate.den != 0)
        rate = FUNC0(rational_framerate);
    return rate;
}