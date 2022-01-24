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
struct TYPE_2__ {int w; int adrmode0; unsigned int szchar; int /*<<< orphan*/  reg0; int /*<<< orphan*/  mode3; } ;

/* Variables and functions */
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned int name, int mskmode)
{
  if((d.w&0400) || !(mskmode&(1<<d.adrmode0)))
    return 0;
  FUNC0(name);
  FUNC0(d.szchar);
  FUNC1 (' ');
  FUNC2(d.mode3, d.reg0, d.szchar);
  return 1;
}