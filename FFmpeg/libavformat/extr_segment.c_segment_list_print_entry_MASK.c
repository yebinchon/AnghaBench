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
struct TYPE_3__ {char* filename; scalar_t__ start_time; scalar_t__ end_time; } ;
typedef  TYPE_1__ SegmentListEntry ;
typedef  int ListType ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_ESCAPE_FLAG_WHITESPACE ; 
 int /*<<< orphan*/  AV_ESCAPE_MODE_AUTO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  LIST_TYPE_CSV 132 
#define  LIST_TYPE_EXT 131 
#define  LIST_TYPE_FFCONCAT 130 
#define  LIST_TYPE_FLAT 129 
#define  LIST_TYPE_M3U8 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(AVIOContext      *list_ioctx,
                                     ListType          list_type,
                                     const SegmentListEntry *list_entry,
                                     void *log_ctx)
{
    switch (list_type) {
    case LIST_TYPE_FLAT:
        FUNC4(list_ioctx, "%s\n", list_entry->filename);
        break;
    case LIST_TYPE_CSV:
    case LIST_TYPE_EXT:
        FUNC5(list_ioctx, list_entry->filename);
        FUNC4(list_ioctx, ",%f,%f\n", list_entry->start_time, list_entry->end_time);
        break;
    case LIST_TYPE_M3U8:
        FUNC4(list_ioctx, "#EXTINF:%f,\n%s\n",
                    list_entry->end_time - list_entry->start_time, list_entry->filename);
        break;
    case LIST_TYPE_FFCONCAT:
    {
        char *buf;
        if (FUNC1(&buf, list_entry->filename, NULL, AV_ESCAPE_MODE_AUTO, AV_ESCAPE_FLAG_WHITESPACE) < 0) {
            FUNC3(log_ctx, AV_LOG_WARNING,
                   "Error writing list entry '%s' in list file\n", list_entry->filename);
            return;
        }
        FUNC4(list_ioctx, "file %s\n", buf);
        FUNC2(buf);
        break;
    }
    default:
        FUNC0(!"Invalid list type");
    }
}