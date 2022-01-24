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
struct TYPE_4__ {int /*<<< orphan*/  stream_copy; } ;
typedef  TYPE_1__ OutputStream ;
typedef  int /*<<< orphan*/  OptionsContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static OutputStream *FUNC3(OptionsContext *o, AVFormatContext *oc, int source_index)
{
    OutputStream *ost;

    ost = FUNC2(o, oc, AVMEDIA_TYPE_UNKNOWN, source_index);
    if (!ost->stream_copy) {
        FUNC0(NULL, AV_LOG_FATAL, "Unknown stream encoding not supported yet (only streamcopy)\n");
        FUNC1(1);
    }

    return ost;
}