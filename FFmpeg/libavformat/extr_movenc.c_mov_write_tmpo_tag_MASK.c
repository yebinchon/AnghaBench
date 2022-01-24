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
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int /*<<< orphan*/  metadata; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(AVIOContext *pb, AVFormatContext *s)
{
    AVDictionaryEntry *t = FUNC1(s->metadata, "tmpo", NULL, 0);
    int size = 0, tmpo = t ? FUNC0(t->value) : 0;
    if (tmpo) {
        size = 26;
        FUNC3(pb, size);
        FUNC4(pb, "tmpo");
        FUNC3(pb, size-8); /* size */
        FUNC4(pb, "data");
        FUNC3(pb, 0x15);  //type specifier
        FUNC3(pb, 0);
        FUNC2(pb, tmpo);        // data
    }
    return size;
}