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
struct sh2lib_handle {int /*<<< orphan*/  hostname; int /*<<< orphan*/ * http2_tls; } ;
struct http_parser_url {TYPE_1__* field_data; } ;
struct TYPE_5__ {char const** alpn_protos; int non_block; } ;
typedef  TYPE_2__ esp_tls_cfg_t ;
struct TYPE_4__ {size_t off; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 size_t UF_HOST ; 
 scalar_t__ FUNC1 (struct sh2lib_handle*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC4 (struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC5 (struct sh2lib_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sh2lib_handle*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ) ; 

int FUNC9(struct sh2lib_handle *hd, const char *uri)
{
    FUNC5(hd, 0, sizeof(*hd));
    const char *proto[] = {"h2", NULL};
    esp_tls_cfg_t tls_cfg = {
        .alpn_protos = proto,
        .non_block = true,
    };    
    if ((hd->http2_tls = FUNC2(uri, &tls_cfg)) == NULL) {
        FUNC0(TAG, "[sh2-connect] esp-tls connection failed");
        goto error;
    }
    struct http_parser_url u;
    FUNC4(&u);
    FUNC3(uri, FUNC7(uri), 0, &u);
    hd->hostname = FUNC8(&uri[u.field_data[UF_HOST].off], u.field_data[UF_HOST].len);

    /* HTTP/2 Connection */
    if (FUNC1(hd) != 0) {
        FUNC0(TAG, "[sh2-connect] HTTP2 Connection failed with %s", uri);
        goto error;
    }

    return 0;
error:
    FUNC6(hd);
    return -1;
}