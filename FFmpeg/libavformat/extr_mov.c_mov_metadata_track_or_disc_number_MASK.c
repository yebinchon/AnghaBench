#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {TYPE_1__* fc; } ;
struct TYPE_4__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  event_flags; } ;
typedef  TYPE_2__ MOVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVFMT_EVENT_FLAG_METADATA_UPDATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 short FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,short,...) ; 

__attribute__((used)) static int FUNC3(MOVContext *c, AVIOContext *pb,
                                             unsigned len, const char *key)
{
    char buf[16];

    short current, total = 0;
    FUNC1(pb); // unknown
    current = FUNC1(pb);
    if (len >= 6)
        total = FUNC1(pb);
    if (!total)
        FUNC2(buf, sizeof(buf), "%d", current);
    else
        FUNC2(buf, sizeof(buf), "%d/%d", current, total);
    c->fc->event_flags |= AVFMT_EVENT_FLAG_METADATA_UPDATED;
    FUNC0(&c->fc->metadata, key, buf, 0);

    return 0;
}