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
typedef  TYPE_1__* xmlNodePtr ;
typedef  TYPE_2__* xmlAttrPtr ;
struct timeline {void* duration; void* repeat; void* starttime; } ;
struct representation {int /*<<< orphan*/  n_timelines; int /*<<< orphan*/  timelines; } ;
typedef  void* int64_t ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_2__* properties; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct timeline* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeline*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s, struct representation *rep,
                                          xmlNodePtr fragment_timeline_node)
{
    xmlAttrPtr attr = NULL;
    char *val  = NULL;

    if (!FUNC3(fragment_timeline_node->name, (const char *)"S")) {
        struct timeline *tml = FUNC2(sizeof(struct timeline));
        if (!tml) {
            return FUNC0(ENOMEM);
        }
        attr = fragment_timeline_node->properties;
        while (attr) {
            val = FUNC7(fragment_timeline_node, attr->name);

            if (!val) {
                FUNC1(s, AV_LOG_WARNING, "parse_manifest_segmenttimeline attr->name = %s val is NULL\n", attr->name);
                continue;
            }

            if (!FUNC3(attr->name, (const char *)"t")) {
                tml->starttime = (int64_t)FUNC5(val, NULL, 10);
            } else if (!FUNC3(attr->name, (const char *)"r")) {
                tml->repeat =(int64_t) FUNC5(val, NULL, 10);
            } else if (!FUNC3(attr->name, (const char *)"d")) {
                tml->duration = (int64_t)FUNC5(val, NULL, 10);
            }
            attr = attr->next;
            FUNC6(val);
        }
        FUNC4(&rep->timelines, &rep->n_timelines, tml);
    }

    return 0;
}