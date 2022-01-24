#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct MD5Context {int /*<<< orphan*/  md5; } ;
typedef  int /*<<< orphan*/  md5 ;
struct TYPE_7__ {char* filename; int /*<<< orphan*/  protocol_blacklist; int /*<<< orphan*/  protocol_whitelist; int /*<<< orphan*/  interrupt_callback; struct MD5Context* priv_data; } ;
typedef  TYPE_1__ URLContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int*,int) ; 
 int FUNC7 (int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC9(URLContext *h)
{
    struct MD5Context *c = h->priv_data;
    const char *filename = h->filename;
    uint8_t md5[16], buf[64];
    URLContext *out;
    int i, err = 0;

    FUNC2(c->md5, md5);
    for (i = 0; i < sizeof(md5); i++)
        FUNC8(buf + i*2, 3, "%02x", md5[i]);
    buf[i*2] = '\n';

    FUNC3(filename, "md5:", &filename);

    if (*filename) {
        err = FUNC5(&out, filename, AVIO_FLAG_WRITE,
                                   &h->interrupt_callback, NULL,
                                   h->protocol_whitelist, h->protocol_blacklist, h);
        if (err)
            return err;
        err = FUNC6(out, buf, i*2+1);
        FUNC4(out);
    } else {
        if (FUNC7(buf, 1, i*2+1, stdout) < i*2+1)
            err = FUNC0(errno);
    }

    FUNC1(&c->md5);

    return err;
}