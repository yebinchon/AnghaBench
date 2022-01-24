#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int esp_err_t ;
struct TYPE_7__ {int frame_type; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
typedef  TYPE_2__ esp_eddystone_result_t ;

/* Variables and functions */
#define  EDDYSTONE_FRAME_TYPE_TLM 130 
#define  EDDYSTONE_FRAME_TYPE_UID 129 
#define  EDDYSTONE_FRAME_TYPE_URL 128 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static esp_err_t FUNC3(const uint8_t* buf, uint8_t len, esp_eddystone_result_t* res)
{
    static esp_err_t ret=-1;
    switch(res->common.frame_type)
    {
        case EDDYSTONE_FRAME_TYPE_UID: {
            ret = FUNC1(buf, len, res);
            break;
        }
        case EDDYSTONE_FRAME_TYPE_URL: {
            ret = FUNC2(buf, len, res);
            break;
        }
        case EDDYSTONE_FRAME_TYPE_TLM: {
            ret = FUNC0(buf, len, res);
            break;
        }
        default:
            break;
    }
    return ret;
}