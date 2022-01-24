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
typedef  unsigned char uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int FUNC1 (void*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC2(void *opaque, uint8_t *buf, int buf_size)
{
    unsigned char buf1[4];
    int ret;

    /* packetized write: output the header */
    FUNC0(buf1, buf_size);
    ret = FUNC1(opaque, buf1, 4);
    if (ret < 0)
        return ret;

    /* then the data */
    return FUNC1(opaque, buf, buf_size);
}