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
struct TYPE_2__ {int opsz; char szchar; int w; int line; char reg9; int /*<<< orphan*/  reg0; int /*<<< orphan*/  mode3; } ;

/* Variables and functions */
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC3(void)
{
  if(d.opsz!=3)
    return 0;

  d.szchar = (d.w&0400) ? '.L' : '.W';
  FUNC0((d.line==0xD) ? 'ADDA' : 'SUBA');
  FUNC0(d.szchar);
  FUNC1 (' ');
  FUNC2(d.mode3, d.reg0, d.szchar);
  FUNC0(',A0'+d.reg9);
  return 1;
}