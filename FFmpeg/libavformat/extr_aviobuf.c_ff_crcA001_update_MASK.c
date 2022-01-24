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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CRC_16_ANSI_LE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

unsigned long FUNC2(unsigned long checksum, const uint8_t *buf,
                                unsigned int len)
{
    return FUNC0(FUNC1(AV_CRC_16_ANSI_LE), checksum, buf, len);
}