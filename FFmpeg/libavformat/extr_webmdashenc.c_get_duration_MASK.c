#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  value; } ;
struct TYPE_7__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  DURATION ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static double FUNC2(AVFormatContext *s)
{
    int i = 0;
    double max = 0.0;
    for (i = 0; i < s->nb_streams; i++) {
        AVDictionaryEntry *duration = FUNC1(s->streams[i]->metadata,
                                                  DURATION, NULL, 0);
        if (!duration || FUNC0(duration->value) < 0) continue;
        if (FUNC0(duration->value) > max) max = FUNC0(duration->value);
    }
    return max / 1000;
}