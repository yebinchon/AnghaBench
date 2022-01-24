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
typedef  int /*<<< orphan*/  app_gap_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  m_dev_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC1(void)
{
    app_gap_cb_t *p_dev = &m_dev_info;
    FUNC0(p_dev, 0, sizeof(app_gap_cb_t));
}