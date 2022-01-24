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
struct TYPE_3__ {int* buf; unsigned int buf_size; char* filename; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ AVProbeData ;
typedef  int /*<<< orphan*/  AVLFG ;

/* Variables and functions */
 scalar_t__ AVPROBE_PADDING_SIZE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (unsigned int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int* FUNC4 (int*,scalar_t__) ; 
 int failures ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int FUNC12 (char*) ; 
 char* single_format ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

int FUNC14(int argc, char **argv)
{
    unsigned int p, i, type, size, retry;
    AVProbeData pd = { 0 };
    AVLFG state;
    PutBitContext pb;
    int retry_count= 4097;
    int max_size = 65537;
    int j;

    for (j = i = 1; i<argc; i++) {
        if (!FUNC13(argv[i], "-f") && i+1<argc && !single_format) {
            single_format = argv[++i];
        } else if (FUNC12(argv[i])>0 && j == 1) {
            retry_count = FUNC12(argv[i]);
            j++;
        } else if (FUNC12(argv[i])>0 && j == 2) {
            max_size = FUNC12(argv[i]);
            j++;
        } else {
            FUNC6(stderr, "probetest [-f <input format>] [<retry_count> [<max_size>]]\n");
            return 1;
        }
    }

    if (max_size > 1000000000U/8) {
        FUNC6(stderr, "max_size out of bounds\n");
        return 1;
    }

    if (retry_count > 1000000000U) {
        FUNC6(stderr, "retry_count out of bounds\n");
        return 1;
    }

    FUNC3(&state, 0xdeadbeef);

    pd.buf = NULL;
    for (size = 1; size < max_size; size *= 2) {
        pd.buf_size = size;
        pd.buf      = FUNC4(pd.buf, size + AVPROBE_PADDING_SIZE);
        pd.filename = "";

        if (!pd.buf) {
            FUNC6(stderr, "out of memory\n");
            return 1;
        }

        FUNC8(pd.buf, 0, size + AVPROBE_PADDING_SIZE);

        FUNC6(stderr, "testing size=%d\n", size);

        for (retry = 0; retry < retry_count; retry += FUNC1(size, 32)) {
            for (type = 0; type < 4; type++) {
                for (p = 0; p < 4096; p++) {
                    unsigned hist = 0;
                    FUNC7(&pb, pd.buf, size);
                    switch (type) {
                    case 0:
                        for (i = 0; i < size * 8; i++)
                            FUNC11(&pb, 1, (FUNC2(&state) & 0xFFFFFFFF) > p << 20);
                        break;
                    case 1:
                        for (i = 0; i < size * 8; i++) {
                            unsigned int p2 = hist ? p & 0x3F : (p >> 6);
                            unsigned int v  = (FUNC2(&state) & 0xFFFFFFFF) > p2 << 26;
                            FUNC11(&pb, 1, v);
                            hist = v;
                        }
                        break;
                    case 2:
                        for (i = 0; i < size * 8; i++) {
                            unsigned int p2 = (p >> (hist * 3)) & 7;
                            unsigned int v  = (FUNC2(&state) & 0xFFFFFFFF) > p2 << 29;
                            FUNC11(&pb, 1, v);
                            hist = (2 * hist + v) & 3;
                        }
                        break;
                    case 3:
                        for (i = 0; i < size; i++) {
                            int c = 0;
                            while (p & 63) {
                                c = (FUNC2(&state) & 0xFFFFFFFF) >> 24;
                                if (c >= 'a' && c <= 'z' && (p & 1))
                                    break;
                                else if (c >= 'A' && c <= 'Z' && (p & 2))
                                    break;
                                else if (c >= '0' && c <= '9' && (p & 4))
                                    break;
                                else if (c == ' ' && (p & 8))
                                    break;
                                else if (c == 0 && (p & 16))
                                    break;
                                else if (c == 1 && (p & 32))
                                    break;
                            }
                            pd.buf[i] = c;
                        }
                    }
                    FUNC5(&pb);
                    FUNC10(&pd, type, p, size);
                }
            }
        }
    }
    if(FUNC0())
        FUNC9();
    return failures;
}