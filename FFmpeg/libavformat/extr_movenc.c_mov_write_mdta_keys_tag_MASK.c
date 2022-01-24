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
struct TYPE_7__ {int /*<<< orphan*/  key; } ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; } ;
typedef  int /*<<< orphan*/  MOVMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  SEEK_SET ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVIOContext *pb, MOVMuxContext *mov,
                                   AVFormatContext *s)
{
    AVDictionaryEntry *t = NULL;
    int64_t pos = FUNC2(pb);
    int64_t curpos, entry_pos;
    int count = 0;

    FUNC3(pb, 0); /* size */
    FUNC5(pb, "keys");
    FUNC3(pb, 0);
    entry_pos = FUNC2(pb);
    FUNC3(pb, 0); /* entry count */

    while ((t = FUNC0(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX))) {
        FUNC3(pb, FUNC6(t->key) + 8);
        FUNC5(pb, "mdta");
        FUNC4(pb, t->key, FUNC6(t->key));
        count += 1;
    }
    curpos = FUNC2(pb);
    FUNC1(pb, entry_pos, SEEK_SET);
    FUNC3(pb, count); // rewrite entry count
    FUNC1(pb, curpos, SEEK_SET);

    return FUNC7(pb, pos);
}