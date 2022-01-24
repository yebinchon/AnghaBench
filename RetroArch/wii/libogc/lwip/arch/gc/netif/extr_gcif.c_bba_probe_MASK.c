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
typedef  scalar_t__ u32 ;
struct netif {int dummy; } ;
typedef  int /*<<< orphan*/  err_t ;

/* Variables and functions */
 scalar_t__ BBA_CID ; 
 int /*<<< orphan*/  ERR_NODEV ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct netif*) ; 

__attribute__((used)) static err_t FUNC2(struct netif *dev)
{
	u32 cid;
	err_t ret;

	cid = FUNC0();
	if(cid!=BBA_CID) return ERR_NODEV;

	ret = FUNC1(dev);
	return ret;
}