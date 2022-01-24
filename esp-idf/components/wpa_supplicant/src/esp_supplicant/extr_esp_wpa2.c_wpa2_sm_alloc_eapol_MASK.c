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
struct l2_ethhdr {int dummy; } ;
struct ieee802_1x_hdr {int version; int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee802_1x_hdr*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee802_1x_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (size_t) ; 

u8 *FUNC4(struct eap_sm *sm, u8 type,
                        const void *data, u16 data_len,
                        size_t *msg_len, void **data_pos)
{
    void *buffer;
    struct ieee802_1x_hdr *hdr;

    *msg_len = sizeof(struct ieee802_1x_hdr) + data_len;
    /* XXX: reserve l2_ethhdr is enough */
    buffer = FUNC3(*msg_len + sizeof(struct l2_ethhdr));

    if (buffer == NULL) {
        return NULL;
    }

    hdr = (struct ieee802_1x_hdr *)((char *)buffer + sizeof(struct l2_ethhdr));
    hdr->version = 0x01;
    hdr->type = type;
    hdr->length = FUNC0(data_len);

    if (data) {
        FUNC1(hdr + 1, data, data_len);
    } else {
        FUNC2(hdr + 1, 0, data_len);
    }

    if (data_pos) {
        *data_pos = hdr + 1;
    }

    return (u8 *) hdr;
}