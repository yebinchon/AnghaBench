#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_10__* packet; } ;
struct TYPE_20__ {int /*<<< orphan*/  packet; } ;
struct TYPE_19__ {int /*<<< orphan*/  search; } ;
struct TYPE_18__ {TYPE_10__* key; } ;
struct TYPE_17__ {TYPE_10__* value; TYPE_10__* key; } ;
struct TYPE_16__ {int /*<<< orphan*/  txt; } ;
struct TYPE_15__ {TYPE_10__* instance; } ;
struct TYPE_14__ {TYPE_10__* service; } ;
struct TYPE_22__ {TYPE_8__ rx_handle; TYPE_7__ tx_handle; TYPE_6__ search_add; TYPE_5__ srv_txt_del; TYPE_4__ srv_txt_set; TYPE_3__ srv_txt_replace; TYPE_2__ srv_instance; TYPE_1__ srv_add; TYPE_10__* instance; TYPE_10__* hostname; } ;
struct TYPE_13__ {int type; TYPE_9__ data; int /*<<< orphan*/  pb; int /*<<< orphan*/  service; } ;
typedef  TYPE_10__ mdns_action_t ;

/* Variables and functions */
#define  ACTION_HOSTNAME_SET 139 
#define  ACTION_INSTANCE_SET 138 
#define  ACTION_RX_HANDLE 137 
#define  ACTION_SEARCH_ADD 136 
#define  ACTION_SEARCH_END 135 
#define  ACTION_SEARCH_SEND 134 
#define  ACTION_SERVICE_ADD 133 
#define  ACTION_SERVICE_INSTANCE_SET 132 
#define  ACTION_SERVICE_TXT_DEL 131 
#define  ACTION_SERVICE_TXT_REPLACE 130 
#define  ACTION_SERVICE_TXT_SET 129 
#define  ACTION_TX_HANDLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(mdns_action_t * action)
{
    switch(action->type) {
    case ACTION_HOSTNAME_SET:
        FUNC4(action->data.hostname);
        break;
    case ACTION_INSTANCE_SET:
        FUNC4(action->data.instance);
        break;
    case ACTION_SERVICE_ADD:
        FUNC1(action->data.srv_add.service->service);
        FUNC4(action->data.srv_add.service);
        break;
    case ACTION_SERVICE_INSTANCE_SET:
        FUNC4(action->data.srv_instance.instance);
        break;
    case ACTION_SERVICE_TXT_REPLACE:
        FUNC0(action->data.srv_txt_replace.txt);
        break;
    case ACTION_SERVICE_TXT_SET:
        FUNC4(action->data.srv_txt_set.key);
        FUNC4(action->data.srv_txt_set.value);
        break;
    case ACTION_SERVICE_TXT_DEL:
        FUNC4(action->data.srv_txt_del.key);
        break;
    case ACTION_SEARCH_ADD:
        //fallthrough
    case ACTION_SEARCH_SEND:
        //fallthrough
    case ACTION_SEARCH_END:
        FUNC3(action->data.search_add.search);
        break;
    case ACTION_TX_HANDLE:
        FUNC2(action->data.tx_handle.packet);
        break;
    case ACTION_RX_HANDLE:
        FUNC5(action->data.rx_handle.packet->pb);
        FUNC4(action->data.rx_handle.packet);
        break;
    default:
        break;
    }
    FUNC4(action);
}