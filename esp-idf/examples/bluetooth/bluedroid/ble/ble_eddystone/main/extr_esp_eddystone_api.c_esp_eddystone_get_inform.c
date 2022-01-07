
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int frame_type; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
typedef TYPE_2__ esp_eddystone_result_t ;





 int esp_eddystone_tlm_received (int const*,int ,TYPE_2__*) ;
 int esp_eddystone_uid_received (int const*,int ,TYPE_2__*) ;
 int esp_eddystone_url_received (int const*,int ,TYPE_2__*) ;

__attribute__((used)) static esp_err_t esp_eddystone_get_inform(const uint8_t* buf, uint8_t len, esp_eddystone_result_t* res)
{
    static esp_err_t ret=-1;
    switch(res->common.frame_type)
    {
        case 129: {
            ret = esp_eddystone_uid_received(buf, len, res);
            break;
        }
        case 128: {
            ret = esp_eddystone_url_received(buf, len, res);
            break;
        }
        case 130: {
            ret = esp_eddystone_tlm_received(buf, len, res);
            break;
        }
        default:
            break;
    }
    return ret;
}
