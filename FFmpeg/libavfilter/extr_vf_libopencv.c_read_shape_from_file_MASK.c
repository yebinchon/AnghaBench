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
typedef  char uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int INT_MAX ; 
 int SIZE_MAX ; 
 int FUNC2 (char const*,char**,size_t*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC7 (int) ; 
 int* FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(int *cols, int *rows, int **values, const char *filename,
                                void *log_ctx)
{
    uint8_t *buf, *p, *pend;
    size_t size;
    int ret, i, j, w;

    if ((ret = FUNC2(filename, &buf, &size, 0, log_ctx)) < 0)
        return ret;

    /* prescan file to get the number of lines and the maximum width */
    w = 0;
    for (i = 0; i < size; i++) {
        if (buf[i] == '\n') {
            if (*rows == INT_MAX) {
                FUNC6(log_ctx, AV_LOG_ERROR, "Overflow on the number of rows in the file\n");
                ret = AVERROR_INVALIDDATA;
                goto end;
            }
            ++(*rows);
            *cols = FUNC1(*cols, w);
            w = 0;
        } else if (w == INT_MAX) {
            FUNC6(log_ctx, AV_LOG_ERROR, "Overflow on the number of columns in the file\n");
            return AVERROR_INVALIDDATA;
        }
        w++;
    }
    if (*rows > (SIZE_MAX / sizeof(int) / *cols)) {
        FUNC6(log_ctx, AV_LOG_ERROR, "File with size %dx%d is too big\n",
               *rows, *cols);
        ret = AVERROR_INVALIDDATA;
        goto end;
    }
    if (!(*values = FUNC8(sizeof(int) * *rows, *cols))) {
        ret = FUNC0(ENOMEM);
        goto end;
    }

    /* fill *values */
    p    = buf;
    pend = buf + size-1;
    for (i = 0; i < *rows; i++) {
        for (j = 0;; j++) {
            if (p > pend || *p == '\n') {
                p++;
                break;
            } else
                (*values)[*cols*i + j] = !!FUNC5(*(p++));
        }
    }

end:
    FUNC3(buf, size);

#ifdef DEBUG
    {
        char *line;
        if (!(line = av_malloc(*cols + 1)))
            return AVERROR(ENOMEM);
        for (i = 0; i < *rows; i++) {
            for (j = 0; j < *cols; j++)
                line[j] = (*values)[i * *cols + j] ? '@' : ' ';
            line[j] = 0;
            av_log(log_ctx, AV_LOG_DEBUG, "%3d: %s\n", i, line);
        }
        av_free(line);
    }
#endif

    return 0;
}