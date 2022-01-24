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
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  INT32_MIN ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(AVStream *st, AVDictionary *metadata)
{
    const AVDictionaryEntry *tg, *tp, *ag, *ap;

    tg = FUNC0(metadata, "REPLAYGAIN_TRACK_GAIN", NULL, 0);
    tp = FUNC0(metadata, "REPLAYGAIN_TRACK_PEAK", NULL, 0);
    ag = FUNC0(metadata, "REPLAYGAIN_ALBUM_GAIN", NULL, 0);
    ap = FUNC0(metadata, "REPLAYGAIN_ALBUM_PEAK", NULL, 0);

    return FUNC1(st,
                             FUNC2(tg ? tg->value : NULL, INT32_MIN),
                             FUNC2(tp ? tp->value : NULL, 0),
                             FUNC2(ag ? ag->value : NULL, INT32_MIN),
                             FUNC2(ap ? ap->value : NULL, 0));
}