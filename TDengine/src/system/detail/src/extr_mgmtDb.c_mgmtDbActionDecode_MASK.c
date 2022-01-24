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
struct TYPE_4__ {char* updateEnd; } ;
typedef  TYPE_1__ SDbObj ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void *FUNC3(void *row, char *str, int size, int *ssize) {
  SDbObj *pDb = (SDbObj *)FUNC0(sizeof(SDbObj));
  if (pDb == NULL) return NULL;
  FUNC2(pDb, 0, sizeof(SDbObj));

  int tsize = pDb->updateEnd - (char *)pDb;
  FUNC1(pDb, str, tsize);

  return (void *)pDb;
}