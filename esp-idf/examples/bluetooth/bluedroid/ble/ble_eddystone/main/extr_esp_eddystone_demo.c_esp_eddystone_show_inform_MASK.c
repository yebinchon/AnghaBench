#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int version; int battery_voltage; int temperature; int adv_count; int time; } ;
struct TYPE_10__ {int tx_power; int url; } ;
struct TYPE_9__ {int ranging_data; int /*<<< orphan*/  instance_id; int /*<<< orphan*/  namespace_id; } ;
struct TYPE_12__ {TYPE_4__ tlm; TYPE_3__ url; TYPE_2__ uid; } ;
struct TYPE_8__ {int frame_type; } ;
struct TYPE_13__ {TYPE_5__ inform; TYPE_1__ common; } ;
typedef  TYPE_6__ esp_eddystone_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEMO_TAG ; 
#define  EDDYSTONE_FRAME_TYPE_TLM 130 
#define  EDDYSTONE_FRAME_TYPE_UID 129 
#define  EDDYSTONE_FRAME_TYPE_URL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(const esp_eddystone_result_t* res)
{
    switch(res->common.frame_type)
    {
        case EDDYSTONE_FRAME_TYPE_UID: {
            FUNC0(DEMO_TAG, "Eddystone UID inform:");
            FUNC0(DEMO_TAG, "Measured power(RSSI at 0m distance):%d dbm", res->inform.uid.ranging_data);
            FUNC0(DEMO_TAG, "EDDYSTONE_DEMO: Namespace ID:0x");
            FUNC1(DEMO_TAG, res->inform.uid.namespace_id, 10);
            FUNC0(DEMO_TAG, "EDDYSTONE_DEMO: Instance ID:0x");
            FUNC1(DEMO_TAG, res->inform.uid.instance_id, 6);
            break;
        }
        case EDDYSTONE_FRAME_TYPE_URL: {
            FUNC0(DEMO_TAG, "Eddystone URL inform:");
            FUNC0(DEMO_TAG, "Measured power(RSSI at 0m distance):%d dbm", res->inform.url.tx_power);
            FUNC0(DEMO_TAG, "URL: %s", res->inform.url.url);
            break;
        }
        case EDDYSTONE_FRAME_TYPE_TLM: {
            FUNC0(DEMO_TAG, "Eddystone TLM inform:");
            FUNC0(DEMO_TAG, "version: %d", res->inform.tlm.version);
            FUNC0(DEMO_TAG, "battery voltage: %d mV", res->inform.tlm.battery_voltage);
            FUNC0(DEMO_TAG, "beacon temperature in degrees Celsius: %6.1f", res->inform.tlm.temperature);
            FUNC0(DEMO_TAG, "adv pdu count since power-up: %d", res->inform.tlm.adv_count);
            FUNC0(DEMO_TAG, "time since power-up: %d s", (res->inform.tlm.time)/10);
            break;
        }
        default:
            break;
    }
}