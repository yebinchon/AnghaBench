#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* insertReqNum; void* selectReqNum; int /*<<< orphan*/  httpReqNum; } ;
typedef  TYPE_1__ SCountInfo ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vnodeInsertReqNum ; 
 int /*<<< orphan*/  vnodeSelectReqNum ; 

void FUNC2(SCountInfo *info) {
  FUNC1(&info->httpReqNum);
  info->selectReqNum = FUNC0(&vnodeSelectReqNum, 0);
  info->insertReqNum = FUNC0(&vnodeInsertReqNum, 0);
}