#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct connect_wii_wiimote_t {TYPE_1__ exp; } ;
struct connect_wii_classic_ctrl_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXP_CLASSIC ; 
 int /*<<< orphan*/  FUNC0 (struct connect_wii_classic_ctrl_t*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct connect_wii_wiimote_t* wm,
      struct connect_wii_classic_ctrl_t* cc, uint8_t* data, uint16_t len)
{
   FUNC0(cc, 0, sizeof(*cc));
   wm->exp.type = EXP_CLASSIC;
   return 1;
}