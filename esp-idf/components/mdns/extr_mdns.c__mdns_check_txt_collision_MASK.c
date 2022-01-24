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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {char* key; char* value; struct TYPE_4__* next; } ;
typedef  TYPE_1__ mdns_txt_linked_item_t ;
struct TYPE_5__ {TYPE_1__* txt; } ;
typedef  TYPE_2__ mdns_service_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOOK_MALLOC_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(mdns_service_t * service, const uint8_t * data, size_t len)
{
    size_t data_len = 1;
    if (len == 1 && service->txt) {
        return -1;//we win
    } else if (len > 1 && !service->txt) {
        return 1;//they win
    } else if (len == 1 && !service->txt) {
        return 0;//same
    }

    mdns_txt_linked_item_t * txt = service->txt;
    while (txt) {
        data_len += 2 + FUNC5(service->txt->key) + FUNC5(service->txt->value);
        txt = txt->next;
    }

    if (len > data_len) {
        return 1;//they win
    } else if (len < data_len) {
        return -1;//we win
    }

    uint8_t ours[len];
    uint16_t index = 0;
    char * tmp;

    txt = service->txt;
    while (txt) {
        tmp = (char *)FUNC2(2 + FUNC5(txt->key) + FUNC5(txt->value));
        if (tmp) {
            FUNC4(tmp, "%s=%s", txt->key, txt->value);
            FUNC0(ours, &index, tmp);
            FUNC1(tmp);
        } else {
            HOOK_MALLOC_FAILED;
            // continue
        }
        txt = txt->next;
    }

    int ret = FUNC3(ours, data, len);
    if (ret > 0) {
        return -1;//we win
    } else if (ret < 0) {
        return 1;//they win
    }
    return 0;//same
}