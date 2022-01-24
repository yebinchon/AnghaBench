#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int intno; int cpu; } ;
typedef  TYPE_1__ vector_desc_t ;

/* Variables and functions */
 int MALLOC_CAP_8BIT ; 
 int MALLOC_CAP_INTERNAL ; 
 TYPE_1__* FUNC0 (int,int) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static vector_desc_t *FUNC4(int intno, int cpu)
{
    vector_desc_t *vd=FUNC0(intno, cpu);
    if (vd==NULL) {
        vector_desc_t *newvd=FUNC1(sizeof(vector_desc_t), MALLOC_CAP_INTERNAL|MALLOC_CAP_8BIT);
        if (newvd==NULL) return NULL;
        FUNC3(newvd, 0, sizeof(vector_desc_t));
        newvd->intno=intno;
        newvd->cpu=cpu;
        FUNC2(newvd);
        return newvd;
    } else {
        return vd;
    }
}