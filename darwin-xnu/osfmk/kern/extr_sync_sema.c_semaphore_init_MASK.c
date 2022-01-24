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
struct semaphore {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int semaphore_max ; 
 int /*<<< orphan*/  semaphore_zone ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(void)
{
  semaphore_zone = FUNC0(sizeof(struct semaphore),
			semaphore_max * sizeof(struct semaphore),
			sizeof(struct semaphore),
			"semaphores");
  FUNC1(semaphore_zone, Z_NOENCRYPT, TRUE);
}