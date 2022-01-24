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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  GX_QUADS ; 
 int /*<<< orphan*/  GX_VTXFMT0 ; 
 int /*<<< orphan*/  FUNC2 (int,double,double) ; 

__attribute__((used)) static inline void FUNC3(void)
{
  FUNC0(GX_QUADS, GX_VTXFMT0, 4);
  FUNC2(3, 0.0, 0.0);
  FUNC2(2, 1.0, 0.0);
  FUNC2(1, 1.0, 1.0);
  FUNC2(0, 0.0, 1.0);
  FUNC1();
}