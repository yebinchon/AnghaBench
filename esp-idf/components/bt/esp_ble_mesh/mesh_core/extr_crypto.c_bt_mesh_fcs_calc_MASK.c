#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t u8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t* crc_table ; 

u8_t FUNC1(const u8_t *data, u8_t data_len)
{
    u8_t fcs = 0xff;

    while (data_len--) {
        fcs = crc_table[fcs ^ *data++];
    }

    FUNC0("fcs 0x%02x", 0xff - fcs);

    return 0xff - fcs;
}