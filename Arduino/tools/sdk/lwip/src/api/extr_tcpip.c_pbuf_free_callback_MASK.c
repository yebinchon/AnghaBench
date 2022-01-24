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
struct pbuf {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 int /*<<< orphan*/  pbuf_free_int ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pbuf*,int /*<<< orphan*/ ) ; 

err_t
FUNC1(struct pbuf *p)
{
  return FUNC0(pbuf_free_int, p, 0);
}