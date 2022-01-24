#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ fill; scalar_t__ storage; } ;
typedef  TYPE_1__ ogg_sync_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 

int FUNC1(ogg_sync_state *oy, long bytes){
  if(FUNC0(oy))return -1;
  if(oy->fill+bytes>oy->storage)return -1;
  oy->fill+=bytes;
  return(0);
}