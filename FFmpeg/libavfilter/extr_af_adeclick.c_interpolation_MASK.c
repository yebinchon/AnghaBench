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
struct TYPE_4__ {double* matrix; double* vector; int /*<<< orphan*/  vector_size; int /*<<< orphan*/  matrix_size; } ;
typedef  TYPE_1__ DeclickChannel ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (double*,int,int,double*,int) ; 
 int /*<<< orphan*/  FUNC3 (double**,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*,double*,double*,int,double*) ; 
 scalar_t__ FUNC5 (int*,int,int) ; 

__attribute__((used)) static int FUNC6(DeclickChannel *c, const double *src, int ar_order,
                         double *acoefficients, int *index, int nb_errors,
                         double *auxiliary, double *interpolated)
{
    double *vector, *matrix;
    int i, j;

    FUNC3(&c->matrix, &c->matrix_size, nb_errors * nb_errors * sizeof(*c->matrix));
    matrix = c->matrix;
    if (!matrix)
        return FUNC0(ENOMEM);

    FUNC3(&c->vector, &c->vector_size, nb_errors * sizeof(*c->vector));
    vector = c->vector;
    if (!vector)
        return FUNC0(ENOMEM);

    FUNC2(acoefficients, ar_order, ar_order + 1, auxiliary, 1.);

    for (i = 0; i < nb_errors; i++) {
        const int im = i * nb_errors;

        for (j = i; j < nb_errors; j++) {
            if (FUNC1(index[j] - index[i]) <= ar_order) {
                matrix[j * nb_errors + i] = matrix[im + j] = auxiliary[FUNC1(index[j] - index[i])];
            } else {
                matrix[j * nb_errors + i] = matrix[im + j] = 0;
            }
        }
    }

    for (i = 0; i < nb_errors; i++) {
        double value = 0.;

        for (j = -ar_order; j <= ar_order; j++)
            if (FUNC5(index, index[i] - j, nb_errors))
                value -= src[index[i] - j] * auxiliary[FUNC1(j)];

        vector[i] = value;
    }

    return FUNC4(c, matrix, vector, nb_errors, interpolated);
}