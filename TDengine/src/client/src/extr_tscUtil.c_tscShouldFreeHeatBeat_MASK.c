#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ cmd; struct TYPE_5__* signature; } ;
typedef  TYPE_2__ SSqlObj ;

/* Variables and functions */
 scalar_t__ TSDB_QUERY_TYPE_FREE_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

bool FUNC1(SSqlObj* pHb) {
  FUNC0(pHb == pHb->signature);
  return pHb->cmd.type == TSDB_QUERY_TYPE_FREE_RESOURCE;
}