#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  host ;
typedef  int /*<<< orphan*/  h_url ;
typedef  int /*<<< orphan*/  auth ;
struct TYPE_6__ {int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_7__ {char* name; char* description; char* url; char* genre; char* content_type; char* user_agent; char* pass; int /*<<< orphan*/  hd; scalar_t__ legacy_icecast; scalar_t__ public; } ;
typedef  TYPE_2__ IcecastContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AVIO_FLAG_READ_WRITE ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_AUTOMATIC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 char* DEFAULT_ICE_USER ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,char*,int,int*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,char*,int,char*,char*) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*,char*) ; 
 char* FUNC16 (char*,char) ; 
 scalar_t__ FUNC17 (char*,char*) ; 

__attribute__((used)) static int FUNC18(URLContext *h, const char *uri, int flags)
{
    IcecastContext *s = h->priv_data;

    // Dict to set options that we pass to the HTTP protocol
    AVDictionary *opt_dict = NULL;

    // URI part variables
    char h_url[1024], host[1024], auth[1024], path[1024];
    char *headers = NULL, *user = NULL;
    int port, ret;
    AVBPrint bp;

    if (flags & AVIO_FLAG_READ)
        return FUNC0(ENOSYS);

    FUNC3(&bp, 0, AV_BPRINT_SIZE_AUTOMATIC);

    // Build header strings
    FUNC12(&bp, "Ice-Name", s->name);
    FUNC12(&bp, "Ice-Description", s->description);
    FUNC12(&bp, "Ice-URL", s->url);
    FUNC12(&bp, "Ice-Genre", s->genre);
    FUNC12(&bp, "Ice-Public", s->public ? "1" : "0");
    if (!FUNC4(&bp)) {
        ret = FUNC0(ENOMEM);
        goto cleanup;
    }
    FUNC2(&bp, &headers);

    // Set options
    FUNC6(&opt_dict, "method", s->legacy_icecast ? "SOURCE" : "PUT", 0);
    FUNC6(&opt_dict, "auth_type", "basic", 0);
    FUNC6(&opt_dict, "headers", headers, 0);
    FUNC6(&opt_dict, "chunked_post", "0", 0);
    FUNC6(&opt_dict, "send_expect_100", s->legacy_icecast ? "-1" : "1", 0);
    if (FUNC1(s->content_type))
        FUNC6(&opt_dict, "content_type", s->content_type, 0);
    else
        FUNC6(&opt_dict, "content_type", "audio/mpeg", 0);
    if (FUNC1(s->user_agent))
        FUNC6(&opt_dict, "user_agent", s->user_agent, 0);

    // Parse URI
    FUNC11(NULL, 0, auth, sizeof(auth), host, sizeof(host),
                 &port, path, sizeof(path), uri);

    // Check for auth data in URI
    if (auth[0]) {
        char *sep = FUNC16(auth, ':');
        if (sep) {
            *sep = 0;
            sep++;
            if (s->pass) {
                FUNC7(s->pass);
                FUNC9(h, AV_LOG_WARNING, "Overwriting -password <pass> with URI password!\n");
            }
            if (!(s->pass = FUNC10(sep))) {
                ret = FUNC0(ENOMEM);
                goto cleanup;
            }
        }
        if (!(user = FUNC10(auth))) {
            ret = FUNC0(ENOMEM);
            goto cleanup;
        }
    }

    // Build new authstring
    FUNC15(auth, sizeof(auth),
             "%s:%s",
             user ? user : DEFAULT_ICE_USER,
             s->pass ? s->pass : "");

    // Check for mountpoint (path)
    if (!path[0] || FUNC17(path, "/") == 0) {
        FUNC9(h, AV_LOG_ERROR, "No mountpoint (path) specified!\n");
        ret = FUNC0(EIO);
        goto cleanup;
    }

    // Build new URI for passing to http protocol
    FUNC13(h_url, sizeof(h_url), "http", auth, host, port, "%s", path);
    // Finally open http proto handler
    ret = FUNC14(&s->hd, h_url, AVIO_FLAG_READ_WRITE, NULL,
                               &opt_dict, h->protocol_whitelist, h->protocol_blacklist, h);

cleanup:
    FUNC8(&user);
    FUNC8(&headers);
    FUNC5(&opt_dict);

    return ret;
}