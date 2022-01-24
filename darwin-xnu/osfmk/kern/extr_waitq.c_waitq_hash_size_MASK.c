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
typedef  int uint32_t ;
struct waitq {int dummy; } ;
typedef  int /*<<< orphan*/  hsize ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (char*,int*,int) ; 
 int thread_max ; 

__attribute__((used)) static uint32_t FUNC2(void)
{
	uint32_t hsize, queues;
	
	if (FUNC1("wqsize", &hsize, sizeof(hsize)))
		return (hsize);

	queues = thread_max / 5;
	hsize = FUNC0(queues * sizeof(struct waitq), PAGE_SIZE);

	return hsize;
}