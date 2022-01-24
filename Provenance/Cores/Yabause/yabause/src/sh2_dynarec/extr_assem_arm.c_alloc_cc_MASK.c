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
struct regstat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCREG ; 
 int /*<<< orphan*/  HOST_CCREG ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

FUNC1(struct regstat *cur,int i)
{
  FUNC0(cur,i,CCREG,HOST_CCREG);
}