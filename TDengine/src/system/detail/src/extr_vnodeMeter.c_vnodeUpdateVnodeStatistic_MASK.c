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
struct TYPE_3__ {int /*<<< orphan*/  vnodeStatistic; } ;
typedef  int /*<<< orphan*/  SVnodeStatisticInfo ;
typedef  TYPE_1__ SVnodeObj ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TSDB_FILE_HEADER_VERSION_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

int FUNC2(FILE *fp, SVnodeObj *pVnode) {
  FUNC0(fp, TSDB_FILE_HEADER_VERSION_SIZE, SEEK_SET);
  FUNC1(&(pVnode->vnodeStatistic), sizeof(SVnodeStatisticInfo), 1, fp);

  return 0;
}