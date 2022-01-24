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
struct wpa_authenticator {int /*<<< orphan*/  const* addr; } ;
struct l2_ethhdr {char* h_dest; char* h_source; int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
 size_t ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static inline int 
FUNC6(struct wpa_authenticator *wpa_auth, const u8 *addr,
            const u8 *data, size_t data_len, int encrypt)
{
    void *buffer = FUNC4(256);
    struct l2_ethhdr *eth = buffer;

    if (!buffer){
        FUNC5( MSG_DEBUG, "send_eapol, buffer=%p\n", buffer);
        return -1;
    }

    FUNC2(eth->h_dest, addr, ETH_ALEN);
    FUNC2(eth->h_source, wpa_auth->addr, ETH_ALEN);
    eth->h_proto = FUNC1(ETH_P_EAPOL);

    FUNC2((char *)buffer + sizeof(struct l2_ethhdr), data, data_len);
    FUNC0(1, buffer, sizeof(struct l2_ethhdr) + data_len);
    FUNC3(buffer);
    return 0;
}