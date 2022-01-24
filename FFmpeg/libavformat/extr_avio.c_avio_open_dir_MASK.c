#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int is_connected; TYPE_1__* prot; int /*<<< orphan*/  priv_data; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_13__ {TYPE_2__* url_context; } ;
struct TYPE_11__ {int (* url_open_dir ) (TYPE_2__*) ;scalar_t__ priv_data_class; scalar_t__ url_close_dir; scalar_t__ url_read_dir; } ;
typedef  TYPE_3__ AVIODirContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (TYPE_2__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 

int FUNC8(AVIODirContext **s, const char *url, AVDictionary **options)
{
    URLContext *h = NULL;
    AVIODirContext *ctx = NULL;
    int ret;
    FUNC1(s);

    ctx = FUNC3(sizeof(*ctx));
    if (!ctx) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    if ((ret = FUNC5(&h, url, AVIO_FLAG_READ, NULL)) < 0)
        goto fail;

    if (h->prot->url_open_dir && h->prot->url_read_dir && h->prot->url_close_dir) {
        if (options && h->prot->priv_data_class &&
            (ret = FUNC4(h->priv_data, options)) < 0)
            goto fail;
        ret = h->prot->url_open_dir(h);
    } else
        ret = FUNC0(ENOSYS);
    if (ret < 0)
        goto fail;

    h->is_connected = 1;
    ctx->url_context = h;
    *s = ctx;
    return 0;

  fail:
    FUNC2(ctx);
    *s = NULL;
    FUNC6(h);
    return ret;
}