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
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {float** magnitudes; float** phases; int data; int scale; } ;
typedef  TYPE_1__ ShowSpectrumContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
#define  CBRT 135 
#define  D_MAGNITUDE 134 
#define  D_PHASE 133 
#define  FIFTHRT 132 
#define  FOURTHRT 131 
#define  LINEAR 130 
#define  LOG 129 
#define  SQRT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 float FUNC1 (float,int,int) ; 
 float FUNC2 (float) ; 
 float FUNC3 (float) ; 
 float FUNC4 (float,double) ; 
 float FUNC5 (float) ; 

__attribute__((used)) static float FUNC6(AVFilterContext *ctx, int ch, int y)
{
    ShowSpectrumContext *s = ctx->priv;
    float *magnitudes = s->magnitudes[ch];
    float *phases = s->phases[ch];
    float a;

    switch (s->data) {
    case D_MAGNITUDE:
        /* get magnitude */
        a = magnitudes[y];
        break;
    case D_PHASE:
        /* get phase */
        a = phases[y];
        break;
    default:
        FUNC0(0);
    }

    /* apply scale */
    switch (s->scale) {
    case LINEAR:
        a = FUNC1(a, 0, 1);
        break;
    case SQRT:
        a = FUNC1(FUNC5(a), 0, 1);
        break;
    case CBRT:
        a = FUNC1(FUNC2(a), 0, 1);
        break;
    case FOURTHRT:
        a = FUNC1(FUNC5(FUNC5(a)), 0, 1);
        break;
    case FIFTHRT:
        a = FUNC1(FUNC4(a, 0.20), 0, 1);
        break;
    case LOG:
        a = 1.f + FUNC3(FUNC1(a, 1e-6, 1)) / 6.f; // zero = -120dBFS
        break;
    default:
        FUNC0(0);
    }

    return a;
}