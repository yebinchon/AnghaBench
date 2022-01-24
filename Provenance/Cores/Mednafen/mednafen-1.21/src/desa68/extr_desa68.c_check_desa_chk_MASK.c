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
struct TYPE_2__ {int w; int adrmode0; char reg9; int status; int branch; int /*<<< orphan*/  reg0; int /*<<< orphan*/  mode3; } ;

/* Variables and functions */
 int DESA68_INST ; 
 int DESA68_INT ; 
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2()
{
  int modemsk = 07775;
  if((d.w&0700) != 0600 || !(modemsk&(1<<d.adrmode0)))
    return 0;
  FUNC0('CHK ');
  FUNC1(d.mode3, d.reg0, 0);
  FUNC0(',D0'+d.reg9);
  d.status = DESA68_INST | DESA68_INT;
  d.branch = 0x18;
  return 1;
}