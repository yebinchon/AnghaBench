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
typedef  int int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(AVFormatContext *s, int64_t *timestamp, int return_seconds)
{
    AVDictionaryEntry *entry;
    int64_t parsed_timestamp;
    int ret;
    if ((entry = FUNC0(s->metadata, "creation_time", NULL, 0))) {
        if ((ret = FUNC2(&parsed_timestamp, entry->value, 0)) >= 0) {
            *timestamp = return_seconds ? parsed_timestamp / 1000000 : parsed_timestamp;
            return 1;
        } else {
            FUNC1(s, AV_LOG_WARNING, "Failed to parse creation_time %s\n", entry->value);
            return ret;
        }
    }
    return 0;
}