
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int as_array; } ;
typedef TYPE_1__ bt_device_features_t ;
typedef int BT_HDR ;


 int HCI_BLE_READ_LOCAL_SPT_FEAT ;
 int STREAM_TO_ARRAY (int ,int *,int) ;
 int assert (int ) ;
 int osi_free (int *) ;
 int * read_command_complete_header (int *,int ,int) ;

__attribute__((used)) static void parse_ble_read_local_supported_features_response(
    BT_HDR *response,
    bt_device_features_t *supported_features)
{

    uint8_t *stream = read_command_complete_header(response, HCI_BLE_READ_LOCAL_SPT_FEAT, sizeof(bt_device_features_t) );
    assert(stream != ((void*)0));
    STREAM_TO_ARRAY(supported_features->as_array, stream, (int)sizeof(bt_device_features_t));

    osi_free(response);
}
