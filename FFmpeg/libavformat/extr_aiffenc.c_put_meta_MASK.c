#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(AVFormatContext *s, const char *key, uint32_t id)
{
    AVDictionaryEntry *tag;
    AVIOContext *pb = s->pb;

    if ((tag = FUNC1(s->metadata, key, NULL, 0))) {
        int size = FUNC6(tag->value);

        FUNC4(pb, id);
        FUNC3(pb, FUNC0(size, 2));
        FUNC5(pb, tag->value, size);
        if (size & 1)
            FUNC2(pb, 0);
    }
}