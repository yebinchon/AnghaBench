#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int* scratchbuf; int dim; int error; TYPE_2__** cells; scalar_t__* points; scalar_t__* utility; } ;
typedef  TYPE_1__ elbg_data ;
struct TYPE_13__ {int index; struct TYPE_13__* next; } ;
typedef  TYPE_2__ cell ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*,int**) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,int**,int*,scalar_t__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int,int) ; 

__attribute__((used)) static void FUNC8(elbg_data *elbg, int idx[3])
{
    int j, k, olderror=0, newerror, cont=0;
    int newutility[3];
    int *newcentroid[3] = {
        elbg->scratchbuf,
        elbg->scratchbuf + elbg->dim,
        elbg->scratchbuf + 2*elbg->dim
    };
    cell *tempcell;

    for (j=0; j<3; j++)
        olderror += elbg->utility[idx[j]];

    FUNC3(newcentroid[2], 0, elbg->dim*sizeof(int));

    for (k=0; k<2; k++)
        for (tempcell=elbg->cells[idx[2*k]]; tempcell; tempcell=tempcell->next) {
            cont++;
            for (j=0; j<elbg->dim; j++)
                newcentroid[2][j] += elbg->points[tempcell->index*elbg->dim + j];
        }

    FUNC7(newcentroid[2], newcentroid[2], cont, elbg->dim);

    FUNC2(elbg, idx[1], newcentroid[0], newcentroid[1]);

    newutility[2]  = FUNC0(elbg, newcentroid[2], elbg->cells[idx[0]]);
    newutility[2] += FUNC0(elbg, newcentroid[2], elbg->cells[idx[2]]);

    newerror = newutility[2];

    newerror += FUNC5(elbg, elbg->dim, newcentroid, newutility, elbg->points,
                           elbg->cells[idx[1]]);

    if (olderror > newerror) {
        FUNC4(elbg, idx, newcentroid);

        elbg->error += newerror - olderror;

        for (j=0; j<3; j++)
            FUNC6(elbg, idx[j], newutility[j]);

        FUNC1(elbg);
    }
 }