
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int esp_err_t ;
struct TYPE_5__ {scalar_t__ ranging_data; scalar_t__* namespace_id; scalar_t__* instance_id; } ;
struct TYPE_6__ {TYPE_1__ uid; } ;
struct TYPE_7__ {TYPE_2__ inform; } ;
typedef TYPE_3__ esp_eddystone_result_t ;


 scalar_t__ EDDYSTONE_UID_DATA_LEN ;
 int EDDYSTONE_UID_INSTANCE_LEN ;
 int EDDYSTONE_UID_NAMESPACE_LEN ;
 scalar_t__ EDDYSTONE_UID_RFU_LEN ;

__attribute__((used)) static esp_err_t esp_eddystone_uid_received(const uint8_t* buf, uint8_t len, esp_eddystone_result_t* res)
{
    uint8_t pos = 0;

    if((len != EDDYSTONE_UID_DATA_LEN) && (len != (EDDYSTONE_UID_RFU_LEN+EDDYSTONE_UID_DATA_LEN))) {

        return -1;
    }
    res->inform.uid.ranging_data = buf[pos++];
    for(int i=0; i<EDDYSTONE_UID_NAMESPACE_LEN; i++) {
        res->inform.uid.namespace_id[i] = buf[pos++];
    }
    for(int i=0; i<EDDYSTONE_UID_INSTANCE_LEN; i++) {
        res->inform.uid.instance_id[i] = buf[pos++];
    }
    return 0;
}
