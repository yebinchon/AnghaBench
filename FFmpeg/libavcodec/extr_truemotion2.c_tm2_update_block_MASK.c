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
struct TYPE_4__ {unsigned int* D; scalar_t__ CD; } ;
typedef  TYPE_1__ TM2Context ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TM2_UPD ; 
 scalar_t__* U ; 
 scalar_t__* Uo ; 
 int Ustride ; 
 scalar_t__* V ; 
 scalar_t__* Vo ; 
 int Vstride ; 
 unsigned int* Y ; 
 unsigned int* Yo ; 
 int /*<<< orphan*/  Ystride ; 
 scalar_t__ clast ; 
 unsigned int* last ; 
 int /*<<< orphan*/  oUstride ; 
 int /*<<< orphan*/  oVstride ; 
 int oYstride ; 

__attribute__((used)) static inline void FUNC3(TM2Context *ctx, AVFrame *pic, int bx, int by)
{
    int i, j;
    unsigned d;
    FUNC1();

    /* update chroma */
    for (j = 0; j < 2; j++) {
        for (i = 0; i < 2; i++) {
            U[i] = Uo[i] + FUNC0(ctx, TM2_UPD);
            V[i] = Vo[i] + FUNC0(ctx, TM2_UPD);
        }
        U  += Ustride;
        V  += Vstride;
        Uo += oUstride;
        Vo += oVstride;
    }
    U -= Ustride * 2;
    V -= Vstride * 2;
    FUNC2(U, Ustride, clast, ctx->CD);
    FUNC2(V, Vstride, (clast + 2), (ctx->CD + 2));

    /* update deltas */
    ctx->D[0] = Yo[3] - last[3];
    ctx->D[1] = Yo[3 + oYstride] - Yo[3];
    ctx->D[2] = Yo[3 + oYstride * 2] - Yo[3 + oYstride];
    ctx->D[3] = Yo[3 + oYstride * 3] - Yo[3 + oYstride * 2];

    for (j = 0; j < 4; j++) {
        d = last[3];
        for (i = 0; i < 4; i++) {
            Y[i]    = Yo[i] + (unsigned)FUNC0(ctx, TM2_UPD);
            last[i] = Y[i];
        }
        ctx->D[j] = last[3] - d;
        Y  += Ystride;
        Yo += oYstride;
    }
}