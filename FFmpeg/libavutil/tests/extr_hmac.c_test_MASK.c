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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  AVHMAC ;

/* Variables and functions */
 int MAX_HASHLEN ; 
 int FUNC0 (int /*<<< orphan*/ *,int const*,int,int const*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(AVHMAC *hmac, const uint8_t *key, int keylen,
                 const uint8_t *data, int datalen)
{
    uint8_t buf[MAX_HASHLEN];
    int out, i;
    // Some of the test vectors are strings, where sizeof() includes the
    // trailing null byte - remove that.
    if (!key[keylen - 1])
        keylen--;
    if (!data[datalen - 1])
        datalen--;
    out = FUNC0(hmac, data, datalen, key, keylen, buf, sizeof(buf));
    for (i = 0; i < out; i++)
        FUNC1("%02x", buf[i]);
    FUNC1("\n");
}