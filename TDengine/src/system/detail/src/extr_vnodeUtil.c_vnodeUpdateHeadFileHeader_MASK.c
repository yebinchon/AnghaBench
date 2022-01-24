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
typedef  int /*<<< orphan*/  SVnodeHeadInfo ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int TSDB_FILE_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int) ; 

void FUNC2(int fd, SVnodeHeadInfo* pHeadInfo) {
  FUNC0(fd, TSDB_FILE_HEADER_LEN / 4, SEEK_SET);
  FUNC1(fd, pHeadInfo, sizeof(SVnodeHeadInfo));
}