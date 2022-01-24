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
struct RowSetEntry {struct RowSetEntry* pRight; } ;
typedef  int /*<<< orphan*/  aBucket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RowSetEntry**,int /*<<< orphan*/ ,int) ; 
 struct RowSetEntry* FUNC1 (struct RowSetEntry*,struct RowSetEntry*) ; 

__attribute__((used)) static struct RowSetEntry *FUNC2(struct RowSetEntry *pIn){
  unsigned int i;
  struct RowSetEntry *pNext, *aBucket[40];

  FUNC0(aBucket, 0, sizeof(aBucket));
  while( pIn ){
    pNext = pIn->pRight;
    pIn->pRight = 0;
    for(i=0; aBucket[i]; i++){
      pIn = FUNC1(aBucket[i], pIn);
      aBucket[i] = 0;
    }
    aBucket[i] = pIn;
    pIn = pNext;
  }
  pIn = 0;
  for(i=0; i<sizeof(aBucket)/sizeof(aBucket[0]); i++){
    pIn = FUNC1(pIn, aBucket[i]);
  }
  return pIn;
}