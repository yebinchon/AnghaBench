#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int maxId; } ;
typedef  TYPE_1__ id_pool_t ;

/* Variables and functions */

int FUNC0(void *handle) {
  id_pool_t *pIdPool = (id_pool_t*)handle;
  return pIdPool->maxId;
}