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
 int /*<<< orphan*/  CONT_DATA_LEN ; 
 int /*<<< orphan*/  SRAND_SEED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 void* rx_done ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* tasks_done ; 
 void* tx_done ; 
 void* FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
    FUNC0("Size of test data: %d\n", CONT_DATA_LEN);
    tx_done = FUNC2();                 //Semaphore to indicate send is done for a particular iteration
    rx_done = FUNC2();                 //Semaphore to indicate receive is done for a particular iteration
    tasks_done = FUNC2();              //Semaphore used to to indicate send and receive tasks completed running
    FUNC1(SRAND_SEED);                                  //Seed RNG
}