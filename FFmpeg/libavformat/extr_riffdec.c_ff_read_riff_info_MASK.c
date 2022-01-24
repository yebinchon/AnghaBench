#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  int int64_t ;
struct TYPE_12__ {int /*<<< orphan*/  metadata; TYPE_1__* pb; } ;
struct TYPE_11__ {scalar_t__ eof_reached; } ;
typedef  TYPE_1__ AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,char*,int) ; 
 void* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int FUNC10 (TYPE_1__*) ; 

int FUNC11(AVFormatContext *s, int64_t size)
{
    int64_t start, end, cur;
    AVIOContext *pb = s->pb;

    start = FUNC10(pb);
    end   = start + size;

    while ((cur = FUNC10(pb)) >= 0 &&
           cur <= end - 8 /* = tag + size */) {
        uint32_t chunk_code;
        int64_t chunk_size;
        char key[5] = { 0 };
        char *value;

        chunk_code = FUNC7(pb);
        chunk_size = FUNC7(pb);
        if (FUNC5(pb)) {
            if (chunk_code || chunk_size) {
                FUNC3(s, AV_LOG_WARNING, "INFO subchunk truncated\n");
                return AVERROR_INVALIDDATA;
            }
            return AVERROR_EOF;
        }
        if (chunk_size > end ||
            end - chunk_size < cur ||
            chunk_size == UINT_MAX) {
            FUNC8(pb, -9, SEEK_CUR);
            chunk_code = FUNC7(pb);
            chunk_size = FUNC7(pb);
            if (chunk_size > end || end - chunk_size < cur || chunk_size == UINT_MAX) {
                FUNC3(s, AV_LOG_WARNING, "too big INFO subchunk\n");
                return AVERROR_INVALIDDATA;
            }
        }

        chunk_size += (chunk_size & 1);

        if (!chunk_code) {
            if (chunk_size)
                FUNC9(pb, chunk_size);
            else if (pb->eof_reached) {
                FUNC3(s, AV_LOG_WARNING, "truncated file\n");
                return AVERROR_EOF;
            }
            continue;
        }

        value = FUNC4(chunk_size + 1);
        if (!value) {
            FUNC3(s, AV_LOG_ERROR,
                   "out of memory, unable to read INFO tag\n");
            return FUNC0(ENOMEM);
        }

        FUNC1(key, chunk_code);
        // Work around VC++ 2015 Update 1 code-gen bug:
        // https://connect.microsoft.com/VisualStudio/feedback/details/2291638
        key[4] = 0;

        if (FUNC6(pb, value, chunk_size) != chunk_size) {
            FUNC3(s, AV_LOG_WARNING,
                   "premature end of file while reading INFO tag\n");
        }

        FUNC2(&s->metadata, key, value, AV_DICT_DONT_STRDUP_VAL);
    }

    return 0;
}