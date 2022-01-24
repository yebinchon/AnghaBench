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
typedef  int /*<<< orphan*/  u16 ;
struct l2_ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
struct eap_sm {int /*<<< orphan*/  const* ownaddr; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline int FUNC4(struct eap_sm *sm, const u8 *dest, u16 proto,
                                     const u8 *data, size_t data_len)
{
    void *buffer = (void *)(data - sizeof(struct l2_ethhdr));
    struct l2_ethhdr *eth = NULL;

    if (!buffer) {
        FUNC3(MSG_ERROR, "wpa2: invalid data");
        return ESP_FAIL;
    } else {
        eth = (struct l2_ethhdr *)buffer;
        FUNC1(eth->h_dest, dest, ETH_ALEN);
        FUNC1(eth->h_source, sm->ownaddr, ETH_ALEN);
        eth->h_proto = FUNC0(proto);
        FUNC2(buffer, sizeof(struct l2_ethhdr) + data_len);
    }

    return ESP_OK;
}