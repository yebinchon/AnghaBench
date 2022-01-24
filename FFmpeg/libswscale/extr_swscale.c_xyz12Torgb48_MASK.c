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
typedef  int /*<<< orphan*/  uint16_t ;
struct SwsContext {int* xyzgamma; int** xyz2rgb_matrix; int* rgbgamma; int /*<<< orphan*/  srcFormat; } ;
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_BE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,int) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct SwsContext *c, uint16_t *dst,
                         const uint16_t *src, int stride, int h)
{
    int xp,yp;
    const AVPixFmtDescriptor *desc = FUNC5(c->srcFormat);

    for (yp=0; yp<h; yp++) {
        for (xp=0; xp+2<stride; xp+=3) {
            int x, y, z, r, g, b;

            if (desc->flags & AV_PIX_FMT_FLAG_BE) {
                x = FUNC0(src + xp + 0);
                y = FUNC0(src + xp + 1);
                z = FUNC0(src + xp + 2);
            } else {
                x = FUNC1(src + xp + 0);
                y = FUNC1(src + xp + 1);
                z = FUNC1(src + xp + 2);
            }

            x = c->xyzgamma[x>>4];
            y = c->xyzgamma[y>>4];
            z = c->xyzgamma[z>>4];

            // convert from XYZlinear to sRGBlinear
            r = (c->xyz2rgb_matrix[0][0] * x +
                c->xyz2rgb_matrix[0][1] * y +
                c->xyz2rgb_matrix[0][2] * z) >> 12;
            g = (c->xyz2rgb_matrix[1][0] * x +
                c->xyz2rgb_matrix[1][1] * y +
                c->xyz2rgb_matrix[1][2] * z) >> 12;
            b = (c->xyz2rgb_matrix[2][0] * x +
                c->xyz2rgb_matrix[2][1] * y +
                c->xyz2rgb_matrix[2][2] * z) >> 12;

            // limit values to 12-bit depth
            r = FUNC4(r, 12);
            g = FUNC4(g, 12);
            b = FUNC4(b, 12);

            // convert from sRGBlinear to RGB and scale from 12bit to 16bit
            if (desc->flags & AV_PIX_FMT_FLAG_BE) {
                FUNC2(dst + xp + 0, c->rgbgamma[r] << 4);
                FUNC2(dst + xp + 1, c->rgbgamma[g] << 4);
                FUNC2(dst + xp + 2, c->rgbgamma[b] << 4);
            } else {
                FUNC3(dst + xp + 0, c->rgbgamma[r] << 4);
                FUNC3(dst + xp + 1, c->rgbgamma[g] << 4);
                FUNC3(dst + xp + 2, c->rgbgamma[b] << 4);
            }
        }
        src += stride;
        dst += stride;
    }
}