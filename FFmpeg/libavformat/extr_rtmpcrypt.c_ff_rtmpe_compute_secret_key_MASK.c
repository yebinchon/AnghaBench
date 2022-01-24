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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  secret_key ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {int /*<<< orphan*/  key_in; int /*<<< orphan*/  key_out; int /*<<< orphan*/  dh; } ;
typedef  TYPE_2__ RTMPEContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int,int,int) ; 

int FUNC4(URLContext *h, const uint8_t *serverdata,
                                const uint8_t *clientdata, int type)
{
    RTMPEContext *rt = h->priv_data;
    uint8_t secret_key[128], digest[32];
    int server_pos, client_pos;
    int ret;

    if (type) {
        if ((server_pos = FUNC3(serverdata, 1532, 632, 772)) < 0)
            return server_pos;
    } else {
        if ((server_pos = FUNC3(serverdata, 768, 632, 8)) < 0)
            return server_pos;
    }

    if ((client_pos = FUNC3(clientdata, 768, 632, 8)) < 0)
        return client_pos;

    /* compute the shared secret secret in order to compute RC4 keys */
    if ((ret = FUNC1(rt->dh, serverdata + server_pos,
                                               128, secret_key, sizeof(secret_key))) < 0)
        return ret;

    /* set output key */
    if ((ret = FUNC2(serverdata + server_pos, 128, 0, secret_key,
                                   128, digest)) < 0)
        return ret;
    FUNC0(&rt->key_out, digest, 16 * 8, 1);

    /* set input key */
    if ((ret = FUNC2(clientdata + client_pos, 128, 0, secret_key,
                                   128, digest)) < 0)
        return ret;
    FUNC0(&rt->key_in, digest, 16 * 8, 1);

    return 0;
}