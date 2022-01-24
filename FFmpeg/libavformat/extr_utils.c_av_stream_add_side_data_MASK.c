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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVPacketSideDataType { ____Placeholder_AVPacketSideDataType } AVPacketSideDataType ;
struct TYPE_7__ {int type; size_t size; int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {int nb_side_data; TYPE_2__* side_data; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVPacketSideData ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ERANGE ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int) ; 

int FUNC3(AVStream *st, enum AVPacketSideDataType type,
                            uint8_t *data, size_t size)
{
    AVPacketSideData *sd, *tmp;
    int i;

    for (i = 0; i < st->nb_side_data; i++) {
        sd = &st->side_data[i];

        if (sd->type == type) {
            FUNC1(&sd->data);
            sd->data = data;
            sd->size = size;
            return 0;
        }
    }

    if ((unsigned)st->nb_side_data + 1 >= INT_MAX / sizeof(*st->side_data))
        return FUNC0(ERANGE);

    tmp = FUNC2(st->side_data, (st->nb_side_data + 1) * sizeof(*tmp));
    if (!tmp) {
        return FUNC0(ENOMEM);
    }

    st->side_data = tmp;
    st->nb_side_data++;

    sd = &st->side_data[st->nb_side_data - 1];
    sd->type = type;
    sd->data = data;
    sd->size = size;

    return 0;
}