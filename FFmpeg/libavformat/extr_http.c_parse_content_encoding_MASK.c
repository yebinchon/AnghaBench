#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_9__ {char const* msg; } ;
struct TYPE_8__ {int compressed; TYPE_4__ inflate_stream; } ;
typedef  TYPE_2__ HTTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int) ; 
 int FUNC5 () ; 

__attribute__((used)) static int FUNC6(URLContext *h, const char *p)
{
    if (!FUNC2(p, "gzip", 4) ||
        !FUNC2(p, "deflate", 7)) {
#if CONFIG_ZLIB
        HTTPContext *s = h->priv_data;

        s->compressed = 1;
        inflateEnd(&s->inflate_stream);
        if (inflateInit2(&s->inflate_stream, 32 + 15) != Z_OK) {
            av_log(h, AV_LOG_WARNING, "Error during zlib initialisation: %s\n",
                   s->inflate_stream.msg);
            return AVERROR(ENOSYS);
        }
        if (zlibCompileFlags() & (1 << 17)) {
            av_log(h, AV_LOG_WARNING,
                   "Your zlib was compiled without gzip support.\n");
            return AVERROR(ENOSYS);
        }
#else
        FUNC1(h, AV_LOG_WARNING,
               "Compressed (%s) content, need zlib with gzip support\n", p);
        return FUNC0(ENOSYS);
#endif /* CONFIG_ZLIB */
    } else if (!FUNC2(p, "identity", 8)) {
        // The normal, no-encoding case (although servers shouldn't include
        // the header at all if this is the case).
    } else {
        FUNC1(h, AV_LOG_WARNING, "Unknown content coding: %s\n", p);
    }
    return 0;
}