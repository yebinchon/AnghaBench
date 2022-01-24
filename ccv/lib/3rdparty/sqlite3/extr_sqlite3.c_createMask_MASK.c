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
struct TYPE_3__ {scalar_t__ n; int* ix; } ;
typedef  TYPE_1__ WhereMaskSet ;

/* Variables and functions */
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(WhereMaskSet *pMaskSet, int iCursor){
  FUNC1( pMaskSet->n < FUNC0(pMaskSet->ix) );
  pMaskSet->ix[pMaskSet->n++] = iCursor;
}