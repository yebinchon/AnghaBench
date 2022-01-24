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
struct TYPE_3__ {int x; int y; int w; int h; int r; int g; int b; } ;
typedef  TYPE_1__ VObj ;

/* Variables and functions */
 int FRAC_BITS ; 
 int FRAC_ONE ; 
 int NB_OBJS ; 
 int NOISE_W ; 
 int NOISE_X ; 
 int NOISE_Y ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int*,int) ; 
 TYPE_1__* objs ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int) ; 
 unsigned int seed ; 

__attribute__((used)) static void FUNC3(int num, int w, int h)
{
    int r, g, b, x, y, i, dx, dy, x1, y1;
    unsigned int seed1;

    if (num == 0) {
        for (i = 0; i < NB_OBJS; i++) {
            objs[i].x = FUNC1(&seed, w);
            objs[i].y = FUNC1(&seed, h);
            objs[i].w = FUNC1(&seed, w / 4) + 10;
            objs[i].h = FUNC1(&seed, h / 4) + 10;
            objs[i].r = FUNC1(&seed, 256);
            objs[i].g = FUNC1(&seed, 256);
            objs[i].b = FUNC1(&seed, 256);
        }
    }

    /* first a moving background with gradients */
    /* test motion estimation */
    dx = FUNC0(num * FRAC_ONE / 50) * 35;
    dy = FUNC0(num * FRAC_ONE / 50 + FRAC_ONE / 10) * 30;
    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            x1 = (x << FRAC_BITS) + dx;
            y1 = (y << FRAC_BITS) + dy;
            r  =       ((y1  * 7) >> FRAC_BITS) & 0xff;
            g  = (((x1 + y1) * 9) >> FRAC_BITS) & 0xff;
            b  =  ((x1       * 5) >> FRAC_BITS) & 0xff;
            FUNC2(x, y, r, g, b);
        }
    }

    /* then some noise with very high intensity to test saturation */
    seed1 = num;
    for (y = 0; y < NOISE_W; y++) {
        for (x = 0; x < NOISE_W; x++) {
            r = FUNC1(&seed1, 256);
            g = FUNC1(&seed1, 256);
            b = FUNC1(&seed1, 256);
            FUNC2(x + NOISE_X, y + NOISE_Y, r, g, b);
        }
    }

    /* then moving objects */
    for (i = 0; i < NB_OBJS; i++) {
        VObj *p = &objs[i];
        seed1 = i;
        for (y = 0; y < p->h; y++) {
            for (x = 0; x < p->w; x++) {
                r = p->r;
                g = p->g;
                b = p->b;
                /* add a per object noise */
                r += FUNC1(&seed1, 50);
                g += FUNC1(&seed1, 50);
                b += FUNC1(&seed1, 50);
                FUNC2(x + p->x, y + p->y, r, g, b);
            }
        }
        p->x += FUNC1(&seed, 21) - 10;
        p->y += FUNC1(&seed, 21) - 10;
    }
}