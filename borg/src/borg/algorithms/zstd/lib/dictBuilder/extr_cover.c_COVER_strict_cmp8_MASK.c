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
 int FUNC0 (int /*<<< orphan*/ ,void const*,void const*) ; 
 int /*<<< orphan*/  g_ctx ; 

__attribute__((used)) static int FUNC1(const void *lp, const void *rp) {
  int result = FUNC0(g_ctx, lp, rp);
  if (result == 0) {
    result = lp < rp ? -1 : 1;
  }
  return result;
}