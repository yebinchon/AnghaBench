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
struct TYPE_2__ {int reg9; int w; char szchar; int /*<<< orphan*/  reg0; int /*<<< orphan*/  mode3; } ;

/* Variables and functions */
 TYPE_1__ d ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC2()
{
  int v;
  v = d.reg9 * 256;
  if(v==0) v=8*256;
  FUNC0((d.w&0400) ? 'SUBQ':'ADDQ');
  FUNC0(d.szchar);
  FUNC0(' #0,' + v);
  FUNC1(d.mode3, d.reg0, d.szchar);
}