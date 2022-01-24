#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bufferpool; } ;
typedef  TYPE_1__ ogg_sync_state ;

/* Variables and functions */
 int OGG_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(ogg_sync_state *oy){
  if(oy){
    FUNC3(oy);
    FUNC2(oy->bufferpool);
    FUNC1(oy,0,sizeof(*oy));
    FUNC0(oy);
  }
  return OGG_SUCCESS;
}