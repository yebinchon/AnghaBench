#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  pb; } ;
typedef  int /*<<< orphan*/  ID3v2ExtraMeta ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  ID3v2_DEFAULT_MAGIC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(AVFormatContext *s, uint64_t id3pos)
{
    ID3v2ExtraMeta *id3v2_extra_meta = NULL;
    if (FUNC0(s->pb, id3pos, SEEK_SET) < 0)
        return;

    FUNC4(s, ID3v2_DEFAULT_MAGIC, &id3v2_extra_meta, 0);
    if (id3v2_extra_meta) {
        FUNC2(s, &id3v2_extra_meta);
        FUNC3(s, &id3v2_extra_meta);
    }
    FUNC1(&id3v2_extra_meta);
}