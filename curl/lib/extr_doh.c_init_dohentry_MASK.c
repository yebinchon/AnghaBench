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
struct dohentry {int /*<<< orphan*/  ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct dohentry*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct dohentry *de)
{
  FUNC0(de, 0, sizeof(*de));
  de->ttl = INT_MAX;
}