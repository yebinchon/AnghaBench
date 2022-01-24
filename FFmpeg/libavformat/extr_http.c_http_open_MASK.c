#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int is_streamed; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {int seekable; char* headers; int /*<<< orphan*/  chained_options; scalar_t__ listen; int /*<<< orphan*/  location; int /*<<< orphan*/  filesize; } ;
typedef  TYPE_2__ HTTPContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (char**,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (TYPE_1__*,char const*,int,int /*<<< orphan*/ **) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(URLContext *h, const char *uri, int flags,
                     AVDictionary **options)
{
    HTTPContext *s = h->priv_data;
    int ret;

    if( s->seekable == 1 )
        h->is_streamed = 0;
    else
        h->is_streamed = 1;

    s->filesize = UINT64_MAX;
    s->location = FUNC5(uri);
    if (!s->location)
        return FUNC0(ENOMEM);
    if (options)
        FUNC1(&s->chained_options, *options, 0);

    if (s->headers) {
        int len = FUNC9(s->headers);
        if (len < 2 || FUNC8("\r\n", s->headers + len - 2)) {
            FUNC3(h, AV_LOG_WARNING,
                   "No trailing CRLF found in HTTP header. Adding it.\n");
            ret = FUNC4(&s->headers, len + 3);
            if (ret < 0)
                return ret;
            s->headers[len]     = '\r';
            s->headers[len + 1] = '\n';
            s->headers[len + 2] = '\0';
        }
    }

    if (s->listen) {
        return FUNC6(h, uri, flags, options);
    }
    ret = FUNC7(h, options);
    if (ret < 0)
        FUNC2(&s->chained_options);
    return ret;
}