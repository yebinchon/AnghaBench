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
struct addrinfo {int /*<<< orphan*/  ai_flags; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  proxy_host ;
typedef  int /*<<< orphan*/  proxy_auth ;
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  dest ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {int listen; char* underlying_host; int numerichost; int /*<<< orphan*/  tcp; scalar_t__ host; } ;
typedef  TYPE_2__ TLSShared ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ_WRITE ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*,int,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*) ; 
 char* FUNC13 (char const*,char) ; 

int FUNC14(TLSShared *c, URLContext *parent, const char *uri, AVDictionary **options)
{
    int port;
    const char *p;
    char buf[200], opts[50] = "";
    struct addrinfo hints = { 0 }, *ai = NULL;
    const char *proxy_path;
    int use_proxy;

    FUNC11(c, uri);

    if (c->listen)
        FUNC12(opts, sizeof(opts), "?listen=1");

    FUNC4(NULL, 0, NULL, 0, c->underlying_host, sizeof(c->underlying_host), &port, NULL, 0, uri);

    p = FUNC13(uri, '?');

    if (!p) {
        p = opts;
    } else {
        if (FUNC1(opts, sizeof(opts), "listen", p))
            c->listen = 1;
    }

    FUNC6(buf, sizeof(buf), "tcp", NULL, c->underlying_host, port, "%s", p);

    hints.ai_flags = AI_NUMERICHOST;
    if (!FUNC9(c->underlying_host, NULL, &hints, &ai)) {
        c->numerichost = 1;
        FUNC8(ai);
    }

    if (!c->host && !(c->host = FUNC2(c->underlying_host)))
        return FUNC0(ENOMEM);

    proxy_path = FUNC10("http_proxy");
    use_proxy = !FUNC5(FUNC10("no_proxy"), c->underlying_host) &&
                proxy_path && FUNC3(proxy_path, "http://", NULL);

    if (use_proxy) {
        char proxy_host[200], proxy_auth[200], dest[200];
        int proxy_port;
        FUNC4(NULL, 0, proxy_auth, sizeof(proxy_auth),
                     proxy_host, sizeof(proxy_host), &proxy_port, NULL, 0,
                     proxy_path);
        FUNC6(dest, sizeof(dest), NULL, NULL, c->underlying_host, port, NULL);
        FUNC6(buf, sizeof(buf), "httpproxy", proxy_auth, proxy_host,
                    proxy_port, "/%s", dest);
    }

    return FUNC7(&c->tcp, buf, AVIO_FLAG_READ_WRITE,
                                &parent->interrupt_callback, options,
                                parent->protocol_whitelist, parent->protocol_blacklist, parent);
}