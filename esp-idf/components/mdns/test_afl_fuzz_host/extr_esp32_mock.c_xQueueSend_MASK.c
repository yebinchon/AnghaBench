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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  TickType_t ;
typedef  int /*<<< orphan*/  QueueHandle_t ;

/* Variables and functions */
 scalar_t__ g_queue_send_shall_fail ; 
 int /*<<< orphan*/  g_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdFALSE ; 
 int /*<<< orphan*/  pdPASS ; 

uint32_t FUNC1(QueueHandle_t xQueue, const void * pvItemToQueue, TickType_t xTicksToWait)
{
    if (g_queue_send_shall_fail)
    {
        return pdFALSE;
    }
    else
    {
        FUNC0(xQueue, pvItemToQueue, g_size);
        return pdPASS;
    }
}