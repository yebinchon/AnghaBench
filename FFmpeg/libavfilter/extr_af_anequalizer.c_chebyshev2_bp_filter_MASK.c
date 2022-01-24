#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int a0; int b0; } ;
struct TYPE_4__ {TYPE_2__* section; } ;
typedef  TYPE_1__ EqualizatorFilter ;

/* Variables and functions */
 double M_PI ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,double,double,double,double,double,double,double,double) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double,double) ; 
 double FUNC4 (double) ; 
 double FUNC5 (int) ; 
 double FUNC6 (double) ; 

__attribute__((used)) static void FUNC7(EqualizatorFilter *f,
                                 int N, double w0, double wb,
                                 double G, double Gb, double G0)
{
    double a, b, c0, tetta_b;
    double epsilon, g, eu, ew;
    int r =  N % 2;
    int L = (N - r) / 2;
    int i;

    if (G == 0 && G0 == 0) {
        f->section[0].a0 = 1;
        f->section[0].b0 = 1;
        f->section[1].a0 = 1;
        f->section[1].b0 = 1;
        return;
    }

    G  = FUNC2(G/20);
    Gb = FUNC2(Gb/20);
    G0 = FUNC2(G0/20);

    epsilon = FUNC5((G*G - Gb*Gb) / (Gb*Gb - G0*G0));
    g  = FUNC3(G, 1.0 / N);
    eu = FUNC3(epsilon + FUNC5(1 + epsilon*epsilon), 1.0/N);
    ew = FUNC3(G0*epsilon + Gb*FUNC5(1 + epsilon*epsilon), 1.0/N);
    a = (eu - 1.0/eu)/2.0;
    b = (ew - g*g/ew)/2.0;
    tetta_b = FUNC6(wb/2);
    c0 = FUNC1(w0);

    for (i = 1; i <= L; i++) {
        double ui = (2.0 * i - 1.0)/N;
        double ci = FUNC1(M_PI * ui / 2.0);
        double si = FUNC4(M_PI * ui / 2.0);
        double Di = tetta_b*tetta_b + 2*a*si*tetta_b + a*a + ci*ci;

        FUNC0(&f->section[i - 1], a, ci, tetta_b, g, si, b, Di, c0);
    }
}