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
struct TYPE_3__ {scalar_t__ type; scalar_t__ buf_pos; void** buf; int /*<<< orphan*/ * pb; scalar_t__ buf_len; } ;
typedef  TYPE_1__ FFTextReader ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 scalar_t__ FF_UTF16BE ; 
 scalar_t__ FF_UTF16LE ; 
 scalar_t__ FF_UTF_8 ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,void**,int) ; 

void FUNC3(void *s, FFTextReader *r, AVIOContext *pb)
{
    int i;
    r->pb = pb;
    r->buf_pos = r->buf_len = 0;
    r->type = FF_UTF_8;
    for (i = 0; i < 2; i++)
        r->buf[r->buf_len++] = FUNC1(r->pb);
    if (FUNC2("\xFF\xFE", r->buf, 2) == 0) {
        r->type = FF_UTF16LE;
        r->buf_pos += 2;
    } else if (FUNC2("\xFE\xFF", r->buf, 2) == 0) {
        r->type = FF_UTF16BE;
        r->buf_pos += 2;
    } else {
        r->buf[r->buf_len++] = FUNC1(r->pb);
        if (FUNC2("\xEF\xBB\xBF", r->buf, 3) == 0) {
            // UTF8
            r->buf_pos += 3;
        }
    }
    if (s && (r->type == FF_UTF16LE || r->type == FF_UTF16BE))
        FUNC0(s, AV_LOG_INFO,
               "UTF16 is automatically converted to UTF8, do not specify a character encoding\n");
}