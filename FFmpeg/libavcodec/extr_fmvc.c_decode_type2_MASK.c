#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ buffer_start; scalar_t__ buffer_end; } ;
typedef  TYPE_1__ PutByteContext ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(GetByteContext *gb, PutByteContext *pb)
{
    unsigned repeat = 0, first = 1, opcode = 0;
    int i, len, pos;

    while (FUNC1(gb) > 0) {
        GetByteContext gbc;

        while (FUNC1(gb) > 0) {
            if (first) {
                first = 0;
                if (FUNC5(gb) > 17) {
                    len = FUNC0(gb) - 17;
                    if (len < 4) {
                        do {
                            FUNC6(pb, FUNC0(gb));
                            --len;
                        } while (len);
                        opcode = FUNC5(gb);
                        continue;
                    } else {
                        do {
                            FUNC6(pb, FUNC0(gb));
                            --len;
                        } while (len);
                        opcode = FUNC5(gb);
                        if (opcode < 0x10) {
                            FUNC9(gb, 1);
                            pos = - (opcode >> 2) - 4 * FUNC0(gb) - 2049;

                            FUNC4(&gbc, pb->buffer_start, pb->buffer_end - pb->buffer_start);
                            FUNC8(&gbc, FUNC11(pb) + pos, SEEK_SET);

                            FUNC6(pb, FUNC0(&gbc));
                            FUNC6(pb, FUNC0(&gbc));
                            FUNC6(pb, FUNC0(&gbc));
                            len = opcode & 3;
                            if (!len) {
                                repeat = 1;
                            } else {
                                do {
                                    FUNC6(pb, FUNC0(gb));
                                    --len;
                                } while (len);
                                opcode = FUNC5(gb);
                            }
                            continue;
                        }
                    }
                    repeat = 0;
                }
                repeat = 1;
            }
            if (repeat) {
                repeat = 0;
                opcode = FUNC5(gb);
                if (opcode < 0x10) {
                    FUNC9(gb, 1);
                    if (!opcode) {
                        if (!FUNC5(gb)) {
                            do {
                                FUNC9(gb, 1);
                                opcode += 255;
                            } while (!FUNC5(gb) && FUNC1(gb) > 0);
                        }
                        opcode += FUNC0(gb) + 15;
                    }
                    FUNC7(pb, FUNC3(gb));
                    for (i = opcode - 1; i > 0; --i)
                        FUNC6(pb, FUNC0(gb));
                    opcode = FUNC5(gb);
                    if (opcode < 0x10) {
                        FUNC9(gb, 1);
                        pos = - (opcode >> 2) - 4 * FUNC0(gb) - 2049;

                        FUNC4(&gbc, pb->buffer_start, pb->buffer_end - pb->buffer_start);
                        FUNC8(&gbc, FUNC11(pb) + pos, SEEK_SET);

                        FUNC6(pb, FUNC0(&gbc));
                        FUNC6(pb, FUNC0(&gbc));
                        FUNC6(pb, FUNC0(&gbc));
                        len = opcode & 3;
                        if (!len) {
                            repeat = 1;
                        } else {
                            do {
                                FUNC6(pb, FUNC0(gb));
                                --len;
                            } while (len);
                            opcode = FUNC5(gb);
                        }
                        continue;
                    }
                }
            }

            if (opcode >= 0x40) {
                FUNC9(gb, 1);
                pos = - ((opcode >> 2) & 7) - 1 - 8 * FUNC0(gb);
                len =    (opcode >> 5)      - 1;

                FUNC4(&gbc, pb->buffer_start, pb->buffer_end - pb->buffer_start);
                FUNC8(&gbc, FUNC11(pb) + pos, SEEK_SET);

                FUNC6(pb, FUNC0(&gbc));
                FUNC6(pb, FUNC0(&gbc));
                do {
                    FUNC6(pb, FUNC0(&gbc));
                    --len;
                } while (len);

                len = opcode & 3;

                if (!len) {
                    repeat = 1;
                } else {
                    do {
                        FUNC6(pb, FUNC0(gb));
                        --len;
                    } while (len);
                    opcode = FUNC5(gb);
                }
                continue;
            } else if (opcode < 0x20) {
                break;
            }
            len = opcode & 0x1F;
            FUNC9(gb, 1);
            if (!len) {
                if (!FUNC5(gb)) {
                    do {
                        FUNC9(gb, 1);
                        len += 255;
                    } while (!FUNC5(gb) && FUNC1(gb) > 0);
                }
                len += FUNC0(gb) + 31;
            }
            i = FUNC2(gb);
            pos = - (i >> 2) - 1;

            FUNC4(&gbc, pb->buffer_start, pb->buffer_end - pb->buffer_start);
            FUNC8(&gbc, FUNC11(pb) + pos, SEEK_SET);

            if (len < 6 || FUNC11(pb) - FUNC10(&gbc) < 4) {
                FUNC6(pb, FUNC0(&gbc));
                FUNC6(pb, FUNC0(&gbc));
                do {
                    FUNC6(pb, FUNC0(&gbc));
                    --len;
                } while (len);
            } else {
                FUNC7(pb, FUNC3(&gbc));
                for (len = len - 2; len; --len)
                    FUNC6(pb, FUNC0(&gbc));
            }
            len = i & 3;
            if (!len) {
                repeat = 1;
            } else {
                do {
                    FUNC6(pb, FUNC0(gb));
                    --len;
                } while (len);
                opcode = FUNC5(gb);
            }
        }
        FUNC9(gb, 1);
        if (opcode < 0x10) {
            pos = -(opcode >> 2) - 1 - 4 * FUNC0(gb);

            FUNC4(&gbc, pb->buffer_start, pb->buffer_end - pb->buffer_start);
            FUNC8(&gbc, FUNC11(pb) + pos, SEEK_SET);

            FUNC6(pb, FUNC0(&gbc));
            FUNC6(pb, FUNC0(&gbc));
            len = opcode & 3;
            if (!len) {
                repeat = 1;
            } else {
                do {
                    FUNC6(pb, FUNC0(gb));
                    --len;
                } while (len);
                opcode = FUNC5(gb);
            }
            continue;
        }
        len = opcode & 7;
        if (!len) {
            if (!FUNC5(gb)) {
                do {
                    FUNC9(gb, 1);
                    len += 255;
                } while (!FUNC5(gb) && FUNC1(gb) > 0);
            }
            len += FUNC0(gb) + 7;
        }
        i = FUNC2(gb);
        pos = FUNC11(pb) - 2048 * (opcode & 8);
        pos = pos - (i >> 2);
        if (pos == FUNC11(pb))
            break;

        pos = pos - 0x4000;
        FUNC4(&gbc, pb->buffer_start, pb->buffer_end - pb->buffer_start);
        FUNC8(&gbc, pos, SEEK_SET);

        if (len < 6 || FUNC11(pb) - FUNC10(&gbc) < 4) {
            FUNC6(pb, FUNC0(&gbc));
            FUNC6(pb, FUNC0(&gbc));
            do {
                FUNC6(pb, FUNC0(&gbc));
                --len;
            } while (len);
        } else {
            FUNC7(pb, FUNC3(&gbc));
            for (len = len - 2; len; --len)
                FUNC6(pb, FUNC0(&gbc));
        }

        len = i & 3;
        if (!len) {
            repeat = 1;
        } else {
            do {
                FUNC6(pb, FUNC0(gb));
                --len;
            } while (len);
            opcode = FUNC5(gb);
        }
    }

    return 0;
}