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
typedef  int /*<<< orphan*/  uint16_t ;
struct ide_device {int dummy; } ;

/* Variables and functions */
 struct ide_device device ; 
 int /*<<< orphan*/  FUNC0 (struct ide_device*,int /*<<< orphan*/ ) ; 

uint8_t FUNC1(uint16_t addr, int no_side_effects) {
    struct ide_device *s = &device;
    return FUNC0(s, addr);
}