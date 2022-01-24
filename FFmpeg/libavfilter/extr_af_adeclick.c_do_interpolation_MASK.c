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
struct TYPE_3__ {double* y; int /*<<< orphan*/  y_size; } ;
typedef  TYPE_1__ DeclickChannel ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (double**,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (double*,int) ; 

__attribute__((used)) static int FUNC3(DeclickChannel *c, double *matrix,
                            double *vector, int n, double *out)
{
    int i, j, ret;
    double *y;

    ret = FUNC2(matrix, n);
    if (ret < 0)
        return ret;

    FUNC1(&c->y, &c->y_size, n * sizeof(*c->y));
    y = c->y;
    if (!y)
        return FUNC0(ENOMEM);

    for (i = 0; i < n; i++) {
        const int in = i * n;
        double value;

        value = vector[i];
        for (j = 0; j < i; j++)
            value -= matrix[in + j] * y[j];
        y[i] = value;
    }

    for (i = n - 1; i >= 0; i--) {
        out[i] = y[i] / matrix[i * n + i];
        for (j = i + 1; j < n; j++)
            out[i] -= matrix[j * n + i] * out[j];
    }

    return 0;
}