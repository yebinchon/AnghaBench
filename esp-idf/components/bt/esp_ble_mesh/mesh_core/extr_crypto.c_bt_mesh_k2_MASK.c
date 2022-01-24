#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8_t ;
struct bt_mesh_sg {int const* data; size_t len; } ;
typedef  int /*<<< orphan*/  pad ;
typedef  int /*<<< orphan*/  out ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bt_mesh_sg*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int const*,int) ; 
 int FUNC3 (int*,struct bt_mesh_sg*,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int*,int const*,int,int*) ; 
 int FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 

int FUNC7(const u8_t n[16], const u8_t *p, size_t p_len,
               u8_t net_id[1], u8_t enc_key[16], u8_t priv_key[16])
{
    struct bt_mesh_sg sg[3];
    u8_t salt[16];
    u8_t out[16];
    u8_t t[16];
    u8_t pad;
    int err;

    FUNC1("n %s", FUNC2(n, 16));
    FUNC1("p %s", FUNC2(p, p_len));

    err = FUNC5("smk2", salt);
    if (err) {
        return err;
    }

    err = FUNC4(salt, n, 16, t);
    if (err) {
        return err;
    }

    pad = 0x01;

    sg[0].data = NULL;
    sg[0].len  = 0;
    sg[1].data = p;
    sg[1].len  = p_len;
    sg[2].data = &pad;
    sg[2].len  = sizeof(pad);

    err = FUNC3(t, sg, FUNC0(sg), out);
    if (err) {
        return err;
    }

    net_id[0] = out[15] & 0x7f;

    sg[0].data = out;
    sg[0].len  = sizeof(out);
    pad = 0x02;

    err = FUNC3(t, sg, FUNC0(sg), out);
    if (err) {
        return err;
    }

    FUNC6(enc_key, out, 16);

    pad = 0x03;

    err = FUNC3(t, sg, FUNC0(sg), out);
    if (err) {
        return err;
    }

    FUNC6(priv_key, out, 16);

    FUNC1("NID 0x%02x enc_key %s", net_id[0], FUNC2(enc_key, 16));
    FUNC1("priv_key %s", FUNC2(priv_key, 16));

    return 0;
}