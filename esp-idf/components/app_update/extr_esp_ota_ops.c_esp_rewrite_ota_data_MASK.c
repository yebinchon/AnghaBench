#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  esp_partition_t ;
typedef  int /*<<< orphan*/  esp_partition_subtype_t ;
struct TYPE_5__ {int ota_seq; void* ota_state; } ;
typedef  TYPE_1__ esp_ota_select_entry_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/  const*) ; 
 void* FUNC5 () ; 

__attribute__((used)) static esp_err_t FUNC6(esp_partition_subtype_t subtype)
{
    esp_ota_select_entry_t otadata[2];
    const esp_partition_t *otadata_partition = FUNC3(otadata);
    if (otadata_partition == NULL) {
        return ESP_ERR_NOT_FOUND;
    }

    int ota_app_count = FUNC2();
    if (FUNC0(subtype) >= ota_app_count) {
        return ESP_ERR_INVALID_ARG;
    }

    //esp32_idf use two sector for store information about which partition is running
    //it defined the two sector as ota data partition,two structure esp_ota_select_entry_t is saved in the two sector
    //named data in first sector as otadata[0], second sector data as otadata[1]
    //e.g.
    //if otadata[0].ota_seq == otadata[1].ota_seq == 0xFFFFFFFF,means ota info partition is in init status
    //so it will boot factory application(if there is),if there's no factory application,it will boot ota[0] application
    //if otadata[0].ota_seq != 0 and otadata[1].ota_seq != 0,it will choose a max seq ,and get value of max_seq%max_ota_app_number
    //and boot a subtype (mask 0x0F) value is (max_seq - 1)%max_ota_app_number,so if want switch to run ota[x],can use next formulas.
    //for example, if otadata[0].ota_seq = 4, otadata[1].ota_seq = 5, and there are 8 ota application,
    //current running is (5-1)%8 = 4,running ota[4],so if we want to switch to run ota[7],
    //we should add otadata[0].ota_seq (is 4) to 4 ,(8-1)%8=7,then it will boot ota[7]
    //if      A=(B - C)%D
    //then    B=(A + C)%D + D*n ,n= (0,1,2...)
    //so current ota app sub type id is x , dest bin subtype is y,total ota app count is n
    //seq will add (x + n*1 + 1 - seq)%n

    int active_otadata = FUNC1(otadata);
    if (active_otadata != -1) {
        uint32_t seq = otadata[active_otadata].ota_seq;
        uint32_t i = 0;
        while (seq > (FUNC0(subtype) + 1) % ota_app_count + i * ota_app_count) {
            i++;
        }
        int next_otadata = (~active_otadata)&1; // if 0 -> will be next 1. and if 1 -> will be next 0.
        otadata[next_otadata].ota_state = FUNC5();
        return FUNC4(otadata, (FUNC0(subtype) + 1) % ota_app_count + i * ota_app_count, next_otadata, otadata_partition);
    } else {
        /* Both OTA slots are invalid, probably because unformatted... */
        int next_otadata = 0;
        otadata[next_otadata].ota_state = FUNC5();
        return FUNC4(otadata, FUNC0(subtype) + 1, next_otadata, otadata_partition);
    }
}