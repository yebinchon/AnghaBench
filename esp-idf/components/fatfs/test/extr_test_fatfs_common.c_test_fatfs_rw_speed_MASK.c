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
struct timeval {float tv_sec; float tv_usec; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*,size_t) ; 

void FUNC11(const char* filename, void* buf, size_t buf_size, size_t file_size, bool is_write)
{
    const size_t buf_count = file_size / buf_size;

    FILE* f = FUNC6(filename, (is_write) ? "wb" : "rb");
    FUNC1(f);

    struct timeval tv_start;
    FUNC7(&tv_start, NULL);
    for (size_t n = 0; n < buf_count; ++n) {
        if (is_write) {
            FUNC0(buf_size, FUNC10(FUNC5(f), buf, buf_size));
        } else {
            if (FUNC9(FUNC5(f), buf, buf_size) != buf_size) {
                FUNC8("reading at n=%d, eof=%d", n, FUNC4(f));
                FUNC2();
            }
        }
    }

    struct timeval tv_end;
    FUNC7(&tv_end, NULL);

    FUNC0(0, FUNC3(f));

    float t_s = tv_end.tv_sec - tv_start.tv_sec + 1e-6f * (tv_end.tv_usec - tv_start.tv_usec);
    FUNC8("%s %d bytes (block size %d) in %.3fms (%.3f MB/s)\n",
            (is_write)?"Wrote":"Read", file_size, buf_size, t_s * 1e3,
                    file_size / (1024.0f * 1024.0f * t_s));
}