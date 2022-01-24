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
typedef  int /*<<< orphan*/  esp_pthread_t ;
typedef  int /*<<< orphan*/  TaskHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  pthread_get_desc_by_handle ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_pthread_t *FUNC1(TaskHandle_t task_handle)
{
    return FUNC0(pthread_get_desc_by_handle, task_handle);
}