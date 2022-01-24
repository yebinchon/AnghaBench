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
struct TYPE_11__ {int flags; scalar_t__ is_streamed; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_12__ {int end_header; char* method; int willclose; char* http_code; scalar_t__ filesize; int seekable; int is_akamai; int is_mediagateway; void* icy_metaint; int /*<<< orphan*/  cookie_dict; void* mime_type; int /*<<< orphan*/  proxy_auth_state; int /*<<< orphan*/  auth_state; scalar_t__ chunksize; int /*<<< orphan*/  http_version; void* resource; scalar_t__ is_connected_server; } ;
typedef  TYPE_2__ HTTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 void* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int FUNC9 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC14 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_2__*,char*,char*) ; 
 int FUNC16 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 char* FUNC19 (char*,char**,int) ; 
 void* FUNC20 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC21(URLContext *h, char *line, int line_count,
                        int *new_location)
{
    HTTPContext *s = h->priv_data;
    const char *auto_method =  h->flags & AVIO_FLAG_READ ? "POST" : "GET";
    char *tag, *p, *end, *method, *resource, *version;
    int ret;

    /* end of header */
    if (line[0] == '\0') {
        s->end_header = 1;
        return 0;
    }

    p = line;
    if (line_count == 0) {
        if (s->is_connected_server) {
            // HTTP method
            method = p;
            while (*p && !FUNC3(*p))
                p++;
            *(p++) = '\0';
            FUNC4(h, AV_LOG_TRACE, "Received method: %s\n", method);
            if (s->method) {
                if (FUNC5(s->method, method)) {
                    FUNC4(h, AV_LOG_ERROR, "Received and expected HTTP method do not match. (%s expected, %s received)\n",
                           s->method, method);
                    return FUNC11(400, FUNC0(EIO));
                }
            } else {
                // use autodetected HTTP method to expect
                FUNC4(h, AV_LOG_TRACE, "Autodetected %s HTTP method\n", auto_method);
                if (FUNC5(auto_method, method)) {
                    FUNC4(h, AV_LOG_ERROR, "Received and autodetected HTTP method did not match "
                           "(%s autodetected %s received)\n", auto_method, method);
                    return FUNC11(400, FUNC0(EIO));
                }
                if (!(s->method = FUNC6(method)))
                    return FUNC0(ENOMEM);
            }

            // HTTP resource
            while (FUNC3(*p))
                p++;
            resource = p;
            while (*p && !FUNC3(*p))
                p++;
            *(p++) = '\0';
            FUNC4(h, AV_LOG_TRACE, "Requested resource: %s\n", resource);
            if (!(s->resource = FUNC6(resource)))
                return FUNC0(ENOMEM);

            // HTTP version
            while (FUNC3(*p))
                p++;
            version = p;
            while (*p && !FUNC3(*p))
                p++;
            *p = '\0';
            if (FUNC7(version, "HTTP/", 5)) {
                FUNC4(h, AV_LOG_ERROR, "Malformed HTTP version string.\n");
                return FUNC11(400, FUNC0(EIO));
            }
            FUNC4(h, AV_LOG_TRACE, "HTTP version string: %s\n", version);
        } else {
            if (FUNC7(p, "HTTP/1.0", 8) == 0)
                s->willclose = 1;
            while (*p != '/' && *p != '\0')
                p++;
            while (*p == '/')
                p++;
            FUNC2(&s->http_version);
            s->http_version = FUNC8(p, 3);
            while (!FUNC3(*p) && *p != '\0')
                p++;
            while (FUNC3(*p))
                p++;
            s->http_code = FUNC19(p, &end, 10);

            FUNC4(h, AV_LOG_TRACE, "http_code=%d\n", s->http_code);

            if ((ret = FUNC9(h, s->http_code, end)) < 0)
                return ret;
        }
    } else {
        while (*p != '\0' && *p != ':')
            p++;
        if (*p != ':')
            return 1;

        *p  = '\0';
        tag = line;
        p++;
        while (FUNC3(*p))
            p++;
        if (!FUNC5(tag, "Location")) {
            if ((ret = FUNC16(s, p)) < 0)
                return ret;
            *new_location = 1;
        } else if (!FUNC5(tag, "Content-Length") &&
                   s->filesize == UINT64_MAX) {
            s->filesize = FUNC20(p, NULL, 10);
        } else if (!FUNC5(tag, "Content-Range")) {
            FUNC13(h, p);
        } else if (!FUNC5(tag, "Accept-Ranges") &&
                   !FUNC18(p, "bytes", 5) &&
                   s->seekable == -1) {
            h->is_streamed = 0;
        } else if (!FUNC5(tag, "Transfer-Encoding") &&
                   !FUNC7(p, "chunked", 7)) {
            s->filesize  = UINT64_MAX;
            s->chunksize = 0;
        } else if (!FUNC5(tag, "WWW-Authenticate")) {
            FUNC10(&s->auth_state, tag, p);
        } else if (!FUNC5(tag, "Authentication-Info")) {
            FUNC10(&s->auth_state, tag, p);
        } else if (!FUNC5(tag, "Proxy-Authenticate")) {
            FUNC10(&s->proxy_auth_state, tag, p);
        } else if (!FUNC5(tag, "Connection")) {
            if (!FUNC17(p, "close"))
                s->willclose = 1;
        } else if (!FUNC5(tag, "Server")) {
            if (!FUNC5(p, "AkamaiGHost")) {
                s->is_akamai = 1;
            } else if (!FUNC7(p, "MediaGateway", 12)) {
                s->is_mediagateway = 1;
            }
        } else if (!FUNC5(tag, "Content-Type")) {
            FUNC1(s->mime_type);
            s->mime_type = FUNC6(p);
        } else if (!FUNC5(tag, "Set-Cookie")) {
            if (FUNC14(s, p, &s->cookie_dict))
                FUNC4(h, AV_LOG_WARNING, "Unable to parse '%s'\n", p);
        } else if (!FUNC5(tag, "Icy-MetaInt")) {
            s->icy_metaint = FUNC20(p, NULL, 10);
        } else if (!FUNC7(tag, "Icy-", 4)) {
            if ((ret = FUNC15(s, tag, p)) < 0)
                return ret;
        } else if (!FUNC5(tag, "Content-Encoding")) {
            if ((ret = FUNC12(h, p)) < 0)
                return ret;
        }
    }
    return 1;
}