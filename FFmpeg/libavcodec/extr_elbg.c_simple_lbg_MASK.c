#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  scratchbuf; } ;
typedef  TYPE_1__ elbg_data ;
struct TYPE_6__ {int index; struct TYPE_6__* next; } ;
typedef  TYPE_2__ cell ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC0 (int*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int,int) ; 

__attribute__((used)) static int FUNC3(elbg_data *elbg,
                      int dim,
                      int *centroid[3],
                      int newutility[3],
                      int *points,
                      cell *cells)
{
    int i, idx;
    int numpoints[2] = {0,0};
    int *newcentroid[2] = {
        elbg->scratchbuf + 3*dim,
        elbg->scratchbuf + 4*dim
    };
    cell *tempcell;

    FUNC1(newcentroid[0], 0, 2 * dim * sizeof(*newcentroid[0]));

    newutility[0] =
    newutility[1] = 0;

    for (tempcell = cells; tempcell; tempcell=tempcell->next) {
        idx = FUNC0(centroid[0], points + tempcell->index*dim, dim, INT_MAX)>=
              FUNC0(centroid[1], points + tempcell->index*dim, dim, INT_MAX);
        numpoints[idx]++;
        for (i=0; i<dim; i++)
            newcentroid[idx][i] += points[tempcell->index*dim + i];
    }

    FUNC2(centroid[0], newcentroid[0], numpoints[0], dim);
    FUNC2(centroid[1], newcentroid[1], numpoints[1], dim);

    for (tempcell = cells; tempcell; tempcell=tempcell->next) {
        int dist[2] = {FUNC0(centroid[0], points + tempcell->index*dim, dim, INT_MAX),
                       FUNC0(centroid[1], points + tempcell->index*dim, dim, INT_MAX)};
        int idx = dist[0] > dist[1];
        newutility[idx] += dist[idx];
    }

    return newutility[0] + newutility[1];
}