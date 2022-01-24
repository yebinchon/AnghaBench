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

/* Variables and functions */
 float M_PI ; 
 float FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (float) ; 
 int /*<<< orphan*/  FUNC2 (float) ; 

__attribute__((used)) static int FUNC3(const float *X, const float *Y, int coupling, int N)
{
    int i;
    float e[2] = { 0.0f, 0.0f };
    if (coupling) { /* Coupling case */
        for (i = 0; i < N; i++) {
            e[0] += (X[i] + Y[i])*(X[i] + Y[i]);
            e[1] += (X[i] - Y[i])*(X[i] - Y[i]);
        }
    } else {
        for (i = 0; i < N; i++) {
            e[0] += X[i]*X[i];
            e[1] += Y[i]*Y[i];
        }
    }
    return FUNC1(32768.0f*FUNC0(FUNC2(e[1]), FUNC2(e[0]))/M_PI);
}