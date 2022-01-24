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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/ * uu; } ;
typedef  TYPE_1__ bt_uuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int,int,int,int) ; 

void FUNC4(bt_uuid_t *p_uuid, char *str)
{
    uint32_t uuid0, uuid4;
    uint16_t uuid1, uuid2, uuid3, uuid5;

    FUNC0(&uuid0, &(p_uuid->uu[0]), 4);
    FUNC0(&uuid1, &(p_uuid->uu[4]), 2);
    FUNC0(&uuid2, &(p_uuid->uu[6]), 2);
    FUNC0(&uuid3, &(p_uuid->uu[8]), 2);
    FUNC0(&uuid4, &(p_uuid->uu[10]), 4);
    FUNC0(&uuid5, &(p_uuid->uu[14]), 2);

    FUNC3((char *)str, "%.8x-%.4x-%.4x-%.4x-%.8x%.4x",
            FUNC1(uuid0), FUNC2(uuid1),
            FUNC2(uuid2), FUNC2(uuid3),
            FUNC1(uuid4), FUNC2(uuid5));
    return;
}