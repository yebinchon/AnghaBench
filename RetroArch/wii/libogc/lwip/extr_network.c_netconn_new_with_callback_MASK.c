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
struct netconn {int dummy; } ;
typedef  enum netconn_type { ____Placeholder_netconn_type } netconn_type ;

/* Variables and functions */
 struct netconn* FUNC0 (int,int /*<<< orphan*/ ,void (*) (struct netconn*,int,u32)) ; 

__attribute__((used)) static struct netconn* FUNC1(enum netconn_type t,void (*cb)(struct netconn*,enum netconn_evt,u32))
{
	return FUNC0(t,0,cb);
}