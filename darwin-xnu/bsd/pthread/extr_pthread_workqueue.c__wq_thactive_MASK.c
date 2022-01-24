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
typedef  int /*<<< orphan*/  wq_thactive_t ;
struct workqueue {int /*<<< orphan*/  wq_thactive; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relaxed ; 

__attribute__((used)) static inline wq_thactive_t
FUNC1(struct workqueue *wq)
{
	return FUNC0(&wq->wq_thactive, relaxed);
}