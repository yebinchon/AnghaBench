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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  F_NOCACHE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (int,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC11 (char*,char*) ; 

int
FUNC12(int argc, char **argv)
{
    int fd[2];
    int print_pixels = 0;
    int dump_blocks = 0;

    int width;
    int height;
    int to_skip = 0;

    if (argc < 6) {
        FUNC3(stderr, "%s [YUV file 1] [YUV file 2] width height pixelcmp|blockdump (# to skip)\n", argv[0]);
        return 1;
    }

    width  = FUNC0(argv[3]);
    height = FUNC0(argv[4]);
    if (argc > 6)
        to_skip = FUNC0(argv[6]);

    uint8_t *Y[2], *C[2][2];
    int i, v, c, p;
    int lsiz = width * height;
    int csiz = width * height / 4;
    int x, y;
    int cwidth = width / 2;
    int fr = to_skip;
    int mb;
    char *mberrors;
    int mb_x, mb_y;
    uint8_t *a;
    uint8_t *b;
    int die = 0;

    print_pixels = FUNC11(argv[5], "pixelcmp") ? 1 : 0;
    dump_blocks  = FUNC11(argv[5], "blockdump") ? 1 : 0;

    for(i = 0; i < 2; i++) {
        Y[i] = FUNC5(lsiz);
        C[0][i] = FUNC5(csiz);
        C[1][i] = FUNC5(csiz);

        fd[i] = FUNC7(argv[1 + i], O_RDONLY);
        if(fd[i] == -1) {
            FUNC8("open");
            FUNC1(1);
        }
        FUNC2(fd[i], F_NOCACHE, 1);

        if (to_skip)
            FUNC4(fd[i], to_skip * (lsiz + 2*csiz), SEEK_SET);
    }

    mb_x = width / 16;
    mb_y = height / 16;

    mberrors = FUNC5(mb_x * mb_y);

    while(!die) {
        FUNC6(mberrors, 0, mb_x * mb_y);

        FUNC9("Loading frame %d\n", ++fr);

        for(i = 0; i < 2; i++) {
            v = FUNC10(fd[i], Y[i], lsiz);
            if(v != lsiz) {
                FUNC3(stderr, "Unable to read Y from file %d, exiting\n", i + 1);
                return 1;
            }
        }


        for(c = 0; c < lsiz; c++) {
            if(Y[0][c] != Y[1][c]) {
                x = c % width;
                y = c / width;

                mb = x / 16 + (y / 16) * mb_x;

                if(print_pixels)
                    FUNC9("Luma diff 0x%02x != 0x%02x at pixel (%4d,%-4d) mb(%d,%d) #%d\n",
                           Y[0][c],
                           Y[1][c],
                           x, y,
                           x / 16,
                           y / 16,
                           mb);

                mberrors[mb] |= 1;
            }
        }

        /* Chroma planes */

        for(p = 0; p < 2; p++) {

            for(i = 0; i < 2; i++) {
                v = FUNC10(fd[i], C[p][i], csiz);
                if(v != csiz) {
                    FUNC3(stderr, "Unable to read %c from file %d, exiting\n",
                            "UV"[p], i + 1);
                    return 1;
                }
            }

            for(c = 0; c < csiz; c++) {
                if(C[p][0][c] != C[p][1][c]) {
                    x = c % cwidth;
                    y = c / cwidth;

                    mb = x / 8 + (y / 8) * mb_x;

                    mberrors[mb] |= 2 << p;

                    if(print_pixels)

                        FUNC9("c%c diff 0x%02x != 0x%02x at pixel (%4d,%-4d) "
                               "mb(%3d,%-3d) #%d\n",
                               p ? 'r' : 'b',
                               C[p][0][c],
                               C[p][1][c],

                               x, y,
                               x / 8,
                               y / 8,
                               x / 8 + y / 8 * cwidth / 8);
                }
            }
        }

        for(i = 0; i < mb_x * mb_y; i++) {
            x = i % mb_x;
            y = i / mb_x;

            if(mberrors[i]) {
                die = 1;

                FUNC9("MB (%3d,%-3d) %4d %d %c%c%c damaged\n",
                       x, y, i, mberrors[i],
                       mberrors[i] & 1 ? 'Y' : ' ',
                       mberrors[i] & 2 ? 'U' : ' ',
                       mberrors[i] & 4 ? 'V' : ' ');

                if(dump_blocks) {
                    a = Y[0] + x * 16 + y * 16 * width;
                    b = Y[1] + x * 16 + y * 16 * width;

                    for(y = 0; y < 16; y++) {
                        FUNC9("%c ", "TB"[y&1]);
                        for(x = 0; x < 16; x++)
                            FUNC9("%02x%c", a[x + y * width],
                                   a[x + y * width] != b[x + y * width] ? '<' : ' ');

                        FUNC9("| ");
                        for(x = 0; x < 16; x++)
                            FUNC9("%02x%c", b[x + y * width],
                                   a[x + y * width] != b[x + y * width] ? '<' : ' ');

                        FUNC9("\n");
                    }
                }
            }
        }
    }

    return 0;
}