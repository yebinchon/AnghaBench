#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  b ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ segment_type; } ;
typedef  TYPE_1__ HLSContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ HAVE_LIBC_MSVCRT ; 
 scalar_t__ SEGMENT_TYPE_FMP4 ; 
 struct tm* FUNC0 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char * FUNC4(AVFormatContext *s)
{
    char b[21];
    time_t t = FUNC3(NULL);
    struct tm *p, tmbuf;
    HLSContext *hls = s->priv_data;

    p = FUNC0(&t, &tmbuf);
    // no %s support when strftime returned error or left format string unchanged
    // also no %s support on MSVC, which invokes the invalid parameter handler on unsupported format strings, instead of returning an error
    if (hls->segment_type == SEGMENT_TYPE_FMP4) {
        return (HAVE_LIBC_MSVCRT || !FUNC2(b, sizeof(b), "%s", p) || !FUNC1(b, "%s")) ? "-%Y%m%d%H%M%S.m4s" : "-%s.m4s";
    }
    return (HAVE_LIBC_MSVCRT || !FUNC2(b, sizeof(b), "%s", p) || !FUNC1(b, "%s")) ? "-%Y%m%d%H%M%S.ts" : "-%s.ts";
}