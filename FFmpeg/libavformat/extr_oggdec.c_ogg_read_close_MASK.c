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
struct ogg {int nstreams; int /*<<< orphan*/  streams; } ;
struct TYPE_4__ {struct ogg* priv_data; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s)
{
    struct ogg *ogg = s->priv_data;
    int i;

    for (i = 0; i < ogg->nstreams; i++) {
        FUNC1(s, i);
    }

    ogg->nstreams = 0;

    FUNC0(&ogg->streams);
    return 0;
}