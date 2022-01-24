#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; } ;
typedef  int /*<<< orphan*/  MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVIOContext *pb, MOVMuxContext *mov,
                                   AVFormatContext *s)
{
    AVDictionaryEntry *t = NULL;
    int64_t pos = FUNC1(pb);
    int count = 1; /* keys are 1-index based */

    FUNC2(pb, 0); /* size */
    FUNC3(pb, "ilst");

    while ((t = FUNC0(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX))) {
        int64_t entry_pos = FUNC1(pb);
        FUNC2(pb, 0); /* size */
        FUNC2(pb, count); /* key */
        FUNC4(pb, t->value, 0, 1);
        FUNC5(pb, entry_pos);
        count += 1;
    }
    return FUNC5(pb, pos);
}