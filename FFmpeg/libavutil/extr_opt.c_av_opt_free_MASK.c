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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int type; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ AVOption ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
#define  AV_OPT_TYPE_BINARY 130 
#define  AV_OPT_TYPE_DICT 129 
#define  AV_OPT_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (void*,TYPE_1__ const*) ; 

void FUNC3(void *obj)
{
    const AVOption *o = NULL;
    while ((o = FUNC2(obj, o))) {
        switch (o->type) {
        case AV_OPT_TYPE_STRING:
        case AV_OPT_TYPE_BINARY:
            FUNC1((uint8_t *)obj + o->offset);
            break;

        case AV_OPT_TYPE_DICT:
            FUNC0((AVDictionary **)(((uint8_t *)obj) + o->offset));
            break;

        default:
            break;
        }
    }
}