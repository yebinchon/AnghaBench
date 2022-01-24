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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  WPA_GMK_LEN ; 
 int WPA_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const u8 *gmk, const char *label, const u8 *addr,
              const u8 *gnonce, u8 *gtk, size_t gtk_len)
{
    u8 data[ETH_ALEN + WPA_NONCE_LEN + 8 + 16];
    u8 *pos;
    int ret = 0;

    /* GTK = PRF-X(GMK, "Group key expansion",
     *    AA || GNonce || Time || random data)
     * The example described in the IEEE 802.11 standard uses only AA and
     * GNonce as inputs here. Add some more entropy since this derivation
     * is done only at the Authenticator and as such, does not need to be
     * exactly same.
     */
    FUNC0(data, addr, ETH_ALEN);
    FUNC0(data + ETH_ALEN, gnonce, WPA_NONCE_LEN);
    pos = data + ETH_ALEN + WPA_NONCE_LEN;
    FUNC4(pos);
    pos += 8;
    if (FUNC1(pos, 16) < 0)
        ret = -1;

#ifdef CONFIG_IEEE80211W
    sha256_prf(gmk, WPA_GMK_LEN, label, data, sizeof(data), gtk, gtk_len);
#else /* CONFIG_IEEE80211W */
    if (FUNC2(gmk, WPA_GMK_LEN, label, data, sizeof(data), gtk, gtk_len) < 0)
        ret = -1;
#endif /* CONFIG_IEEE80211W */

    return ret;
}