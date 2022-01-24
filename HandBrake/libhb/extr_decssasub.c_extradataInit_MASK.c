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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ssize_t ;
struct TYPE_5__ {TYPE_1__* subtitle; int /*<<< orphan*/  file; } ;
typedef  TYPE_2__ hb_work_private_t ;
struct TYPE_4__ {int extradata_size; int /*<<< orphan*/ * extradata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,size_t*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char*,char*) ; 
 char* FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

__attribute__((used)) static int FUNC6( hb_work_private_t * pv )
{
    int    events = 0;
    char * events_tag = "[Events]";
    char * format_tag = "Format:";
    int    events_len = FUNC4(events_tag);;
    int    format_len = FUNC4(format_tag);;
    char * header = NULL;

    while (1)
    {
        char    * line = NULL;
        ssize_t   len;
        size_t    size = 0;

        len = FUNC1(&line, &size, pv->file);
        if (len < 0)
        {
            // Incomplete SSA header
            FUNC0(header);
            return 1;
        }
        if (len > 0 && line != NULL)
        {
            if (header != NULL)
            {
                char * tmp = header;
                header = FUNC2("%s%s", header, line);
                FUNC0(tmp);
            }
            else
            {
                header = FUNC3(line);
            }
            if (!events)
            {
                if (len >= events_len &&
                    !FUNC5(line, events_tag, events_len))
                {
                    events = 1;
                }
            }
            else
            {
                if (len >= format_len &&
                    !FUNC5(line, format_tag, format_len))
                {
                    FUNC0(line);
                    break;
                }
                // Improperly formatted SSA header
                FUNC0(header);
                return 1;
            }
        }
        FUNC0(line);
    }
    pv->subtitle->extradata = (uint8_t*)header;
    pv->subtitle->extradata_size = FUNC4(header) + 1;

    return 0;
}