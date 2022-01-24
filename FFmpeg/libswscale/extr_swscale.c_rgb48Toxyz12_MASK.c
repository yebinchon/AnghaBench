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
struct SwsContext {int* rgbgammainv; int** rgb2xyz_matrix; int* xyzgammainv; int /*<<< orphan*/  dstFormat; } ;
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
    const AVPixFmtDescriptor *desc = FUNC5(c->dstFormat);

    for (yp=0; yp<h; yp++) {
        for (xp=0; xp+2<stride; xp+=3) {
            int x, y, z, r, g, b;

            if (desc->flags & AV_PIX_FMT_FLAG_BE) {
                r = FUNC0(src + xp + 0);
                g = FUNC0(src + xp + 1);
                b = FUNC0(src + xp + 2);
            } else {
                r = FUNC1(src + xp + 0);
                g = FUNC1(src + xp + 1);
                b = FUNC1(src + xp + 2);
            }

            r = c->rgbgammainv[r>>4];
            g = c->rgbgammainv[g>>4];
            b = c->rgbgammainv[b>>4];

            // convert from sRGBlinear to XYZlinear
            x = (c->rgb2xyz_matrix[0][0] * r +
                c->rgb2xyz_matrix[0][1] * g +
                c->rgb2xyz_matrix[0][2] * b) >> 12;
            y = (c->rgb2xyz_matrix[1][0] * r +
                c->rgb2xyz_matrix[1][1] * g +
                c->rgb2xyz_matrix[1][2] * b) >> 12;
            z = (c->rgb2xyz_matrix[2][0] * r +
                c->rgb2xyz_matrix[2][1] * g +
                c->rgb2xyz_matrix[2][2] * b) >> 12;

            // limit values to 12-bit depth
            x = FUNC4(x, 12);
            y = FUNC4(y, 12);
            z = FUNC4(z, 12);

            // convert from XYZlinear to X'Y'Z' and scale from 12bit to 16bit
            if (desc->flags & AV_PIX_FMT_FLAG_BE) {
                FUNC2(dst + xp + 0, c->xyzgammainv[x] << 4);
                FUNC2(dst + xp + 1, c->xyzgammainv[y] << 4);
                FUNC2(dst + xp + 2, c->xyzgammainv[z] << 4);
            } else {
                FUNC3(dst + xp + 0, c->xyzgammainv[x] << 4);
                FUNC3(dst + xp + 1, c->xyzgammainv[y] << 4);
                FUNC3(dst + xp + 2, c->xyzgammainv[z] << 4);
            }
        }
        src += stride;
        dst += stride;
    }
}