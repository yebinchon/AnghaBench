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
struct TYPE_4__ {int uuid16; int* uuid128; scalar_t__ uuid32; } ;
struct TYPE_5__ {scalar_t__ len; TYPE_1__ uu; } ;
typedef  TYPE_2__ tBT_UUID ;
typedef  int /*<<< orphan*/  str_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ LEN_UUID_128 ; 
 scalar_t__ LEN_UUID_16 ; 
 scalar_t__ LEN_UUID_32 ; 
 scalar_t__ FUNC2 (char*,char*,int,...) ; 

void FUNC3(tBT_UUID bt_uuid)
{
    char str_buf[50];
    int x = 0;

    if (bt_uuid.len == LEN_UUID_16) {
        FUNC2(str_buf, "0x%04x", bt_uuid.uu.uuid16);
    } else if (bt_uuid.len == LEN_UUID_32) {
        FUNC2(str_buf, "0x%08x", (unsigned int)bt_uuid.uu.uuid32);
    } else if (bt_uuid.len == LEN_UUID_128) {
        x += FUNC2(&str_buf[x], "0x%02x%02x%02x%02x%02x%02x%02x%02x",
                     bt_uuid.uu.uuid128[15], bt_uuid.uu.uuid128[14],
                     bt_uuid.uu.uuid128[13], bt_uuid.uu.uuid128[12],
                     bt_uuid.uu.uuid128[11], bt_uuid.uu.uuid128[10],
                     bt_uuid.uu.uuid128[9], bt_uuid.uu.uuid128[8]);
        FUNC2(&str_buf[x], "%02x%02x%02x%02x%02x%02x%02x%02x",
                bt_uuid.uu.uuid128[7], bt_uuid.uu.uuid128[6],
                bt_uuid.uu.uuid128[5], bt_uuid.uu.uuid128[4],
                bt_uuid.uu.uuid128[3], bt_uuid.uu.uuid128[2],
                bt_uuid.uu.uuid128[1], bt_uuid.uu.uuid128[0]);
    } else {
        FUNC0(str_buf, sizeof(str_buf), "Unknown UUID 0", 15);
    }

    FUNC1 ("UUID=[%s]", str_buf);

}