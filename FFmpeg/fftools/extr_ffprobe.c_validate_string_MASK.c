#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int string_validation; int /*<<< orphan*/  string_validation_replacement; int /*<<< orphan*/  string_validation_utf8_flags; } ;
typedef  TYPE_1__ WriterContext ;
struct TYPE_11__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_2__ AVBPrint ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_AUTOMATIC ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  WRITER_STRING_VALIDATION_FAIL 129 
 int WRITER_STRING_VALIDATION_IGNORE ; 
#define  WRITER_STRING_VALIDATION_REPLACE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const**,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char const*,int) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static inline int FUNC8(WriterContext *wctx, char **dstp, const char *src)
{
    const uint8_t *p, *endp;
    AVBPrint dstbuf;
    int invalid_chars_nb = 0, ret = 0;

    FUNC2(&dstbuf, 0, AV_BPRINT_SIZE_UNLIMITED);

    endp = src + FUNC7(src);
    for (p = (uint8_t *)src; *p;) {
        uint32_t code;
        int invalid = 0;
        const uint8_t *p0 = p;

        if (FUNC5(&code, &p, endp, wctx->string_validation_utf8_flags) < 0) {
            AVBPrint bp;
            FUNC2(&bp, 0, AV_BPRINT_SIZE_AUTOMATIC);
            FUNC6(&bp, p0, p-p0);
            FUNC4(wctx, AV_LOG_DEBUG,
                   "Invalid UTF-8 sequence %s found in string '%s'\n", bp.str, src);
            invalid = 1;
        }

        if (invalid) {
            invalid_chars_nb++;

            switch (wctx->string_validation) {
            case WRITER_STRING_VALIDATION_FAIL:
                FUNC4(wctx, AV_LOG_ERROR,
                       "Invalid UTF-8 sequence found in string '%s'\n", src);
                ret = AVERROR_INVALIDDATA;
                goto end;
                break;

            case WRITER_STRING_VALIDATION_REPLACE:
                FUNC3(&dstbuf, "%s", wctx->string_validation_replacement);
                break;
            }
        }

        if (!invalid || wctx->string_validation == WRITER_STRING_VALIDATION_IGNORE)
            FUNC0(&dstbuf, p0, p-p0);
    }

    if (invalid_chars_nb && wctx->string_validation == WRITER_STRING_VALIDATION_REPLACE) {
        FUNC4(wctx, AV_LOG_WARNING,
               "%d invalid UTF-8 sequence(s) found in string '%s', replaced with '%s'\n",
               invalid_chars_nb, src, wctx->string_validation_replacement);
    }

end:
    FUNC1(&dstbuf, dstp);
    return ret;
}