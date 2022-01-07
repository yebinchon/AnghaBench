
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_9__ {int as_array; } ;
struct TYPE_11__ {scalar_t__ acl_data_size_classic; scalar_t__ last_features_classic_page_index; int simple_pairing_supported; int ble_supported; scalar_t__ acl_data_size_ble; int readable; TYPE_1__* packet_parser; TYPE_2__* packet_factory; int ble_suggested_default_data_txtime; int ble_suggested_default_data_length; TYPE_3__ features_ble; int ble_resolving_list_max_size; int ble_supported_states; int acl_buffer_count_ble; int ble_white_list_size; TYPE_4__* features_classic; scalar_t__ secure_connections_supported; int supported_commands; int address; int bt_version; int sco_buffer_count; int sco_data_size; int acl_buffer_count_classic; } ;
struct TYPE_10__ {int as_array; } ;
struct TYPE_8__ {int (* make_write_default_erroneous_data_report ) (int) ;int (* make_write_sync_flow_control_enable ) (int) ;int (* make_set_event_mask ) (int *) ;int (* make_ble_set_event_mask ) (int *) ;int (* make_ble_read_suggested_default_data_length ) () ;int (* make_ble_write_suggested_default_data_length ) (int ,int ) ;int (* make_ble_read_resolving_list_size ) () ;int (* make_ble_read_local_supported_features ) () ;int (* make_ble_read_supported_states ) () ;int (* make_ble_read_buffer_size ) () ;int (* make_ble_read_white_list_size ) () ;int (* make_write_secure_connections_host_support ) (int ) ;int (* make_read_local_extended_features ) (scalar_t__) ;int (* make_ble_write_host_support ) (int ,scalar_t__) ;int (* make_write_simple_pairing_mode ) (int ) ;int (* make_read_local_supported_commands ) () ;int (* make_read_bd_addr ) () ;int (* make_read_local_version_info ) () ;int (* make_host_buffer_size ) (int ,int ,int ,int) ;int (* make_set_adv_report_flow_control ) (int ,int ,int ) ;int (* make_set_c2h_flow_control ) (int ) ;int (* make_read_buffer_size ) () ;int (* make_reset ) () ;} ;
struct TYPE_7__ {int (* parse_generic_command_complete ) (int *) ;int (* parse_ble_read_suggested_default_data_length_response ) (int *,int *,int *) ;int (* parse_ble_read_resolving_list_size_response ) (int *,int *) ;int (* parse_ble_read_local_supported_features_response ) (int *,TYPE_3__*) ;int (* parse_ble_read_supported_states_response ) (int *,int ,int) ;int (* parse_ble_read_buffer_size_response ) (int *,scalar_t__*,int *) ;int (* parse_ble_read_white_list_size_response ) (int *,int *) ;int (* parse_read_local_extended_features_response ) (int *,scalar_t__*,scalar_t__*,TYPE_4__*,scalar_t__) ;int (* parse_read_local_supported_commands_response ) (int *,int ,int ) ;int (* parse_read_bd_addr_response ) (int *,int *) ;int (* parse_read_local_version_info_response ) (int *,int *) ;int (* parse_read_buffer_size_response ) (int *,scalar_t__*,int *,int *,int *) ;} ;
typedef int BT_HDR ;


 int * AWAIT_COMMAND (int ) ;
 scalar_t__ BLE_ADV_REPORT_DISCARD_THRSHOLD ;
 scalar_t__ BLE_ADV_REPORT_FLOW_CONTROL_NUM ;
 int BLE_EVENT_MASK ;
 int BTM_BLE_DATA_SIZE_MAX ;
 int BTM_BLE_DATA_TX_TIME_MAX ;
 int BTM_BLE_HOST_SUPPORT ;
 scalar_t__ BTM_BLE_SIMULTANEOUS_HOST ;
 int CLASSIC_EVENT_MASK ;
 int HCI_HOST_FLOW_CTRL_ACL_ON ;
 int HCI_HOST_FLOW_CTRL_ADV_REPORT_ON ;
 scalar_t__ HCI_LE_DATA_LEN_EXT_SUPPORTED (int ) ;
 scalar_t__ HCI_LE_ENHANCED_PRIVACY_SUPPORTED (int ) ;
 scalar_t__ HCI_LE_HOST_SUPPORTED (int ) ;
 scalar_t__ HCI_LE_SPT_SUPPORTED (int ) ;
 scalar_t__ HCI_SC_CTRLR_SUPPORTED (int ) ;
 int HCI_SC_MODE_ENABLED ;
 int HCI_SIMPLE_PAIRING_SUPPORTED (int ) ;
 scalar_t__ HCI_SIMUL_LE_BREDR_SUPPORTED (int ) ;
 int HCI_SP_MODE_ENABLED ;
 int HCI_SUPPORTED_COMMANDS_ARRAY_SIZE ;
 int L2CAP_HOST_FC_ACL_BUFS ;
 int L2CAP_MTU_SIZE ;
 scalar_t__ MAX_FEATURES_CLASSIC_PAGE_COUNT ;
 int SCO_HOST_BUFFER_SIZE ;
 int assert (int) ;
 TYPE_6__ controller_param ;
 int stub1 () ;
 int stub10 (int *) ;
 int stub11 () ;
 int stub12 (int *,int *) ;
 int stub13 () ;
 int stub14 (int *,int *) ;
 int stub15 () ;
 int stub16 (int *,int ,int ) ;
 int stub17 (scalar_t__) ;
 int stub18 (int *,scalar_t__*,scalar_t__*,TYPE_4__*,scalar_t__) ;
 int stub19 (int ) ;
 int stub2 (int *) ;
 int stub20 (int *) ;
 int stub21 (int ,scalar_t__) ;
 int stub22 (int *) ;
 int stub23 (scalar_t__) ;
 int stub24 (int *,scalar_t__*,scalar_t__*,TYPE_4__*,scalar_t__) ;
 int stub25 (int ) ;
 int stub26 (int *) ;
 int stub27 () ;
 int stub28 (int *,int *) ;
 int stub29 () ;
 int stub3 () ;
 int stub30 (int *,scalar_t__*,int *) ;
 int stub31 () ;
 int stub32 (int *,int ,int) ;
 int stub33 () ;
 int stub34 (int *,TYPE_3__*) ;
 int stub35 () ;
 int stub36 (int *,int *) ;
 int stub37 (int ,int ) ;
 int stub38 (int *) ;
 int stub39 () ;
 int stub4 (int *,scalar_t__*,int *,int *,int *) ;
 int stub40 (int *,int *,int *) ;
 int stub41 (int *) ;
 int stub42 (int *) ;
 int stub43 (int *) ;
 int stub44 (int *) ;
 int stub45 (int) ;
 int stub46 (int *) ;
 int stub47 (int) ;
 int stub48 (int *) ;
 int stub5 (int ) ;
 int stub6 (int *) ;
 int stub7 (int ,int ,int ) ;
 int stub8 (int *) ;
 int stub9 (int ,int ,int ,int) ;

__attribute__((used)) static void start_up(void)
{
    BT_HDR *response;


    response = AWAIT_COMMAND(controller_param.packet_factory->make_reset());
    controller_param.packet_parser->parse_generic_command_complete(response);


    response = AWAIT_COMMAND(controller_param.packet_factory->make_read_buffer_size());
    controller_param.packet_parser->parse_read_buffer_size_response(
        response, &controller_param.acl_data_size_classic, &controller_param.acl_buffer_count_classic,
        &controller_param.sco_data_size, &controller_param.sco_buffer_count);



    response = AWAIT_COMMAND(controller_param.packet_factory->make_set_c2h_flow_control(HCI_HOST_FLOW_CTRL_ACL_ON));
    controller_param.packet_parser->parse_generic_command_complete(response);



    response = AWAIT_COMMAND(controller_param.packet_factory->make_set_adv_report_flow_control(HCI_HOST_FLOW_CTRL_ADV_REPORT_ON, (uint16_t)BLE_ADV_REPORT_FLOW_CONTROL_NUM, (uint16_t)BLE_ADV_REPORT_DISCARD_THRSHOLD));
    controller_param.packet_parser->parse_generic_command_complete(response);



    response = AWAIT_COMMAND(
                   controller_param.packet_factory->make_host_buffer_size(
                       L2CAP_MTU_SIZE,
                       SCO_HOST_BUFFER_SIZE,
                       L2CAP_HOST_FC_ACL_BUFS,
                       10
                   )
               );

    controller_param.packet_parser->parse_generic_command_complete(response);



    response = AWAIT_COMMAND(controller_param.packet_factory->make_read_local_version_info());
    controller_param.packet_parser->parse_read_local_version_info_response(response, &controller_param.bt_version);


    response = AWAIT_COMMAND(controller_param.packet_factory->make_read_bd_addr());
    controller_param.packet_parser->parse_read_bd_addr_response(response, &controller_param.address);


    response = AWAIT_COMMAND(controller_param.packet_factory->make_read_local_supported_commands());
    controller_param.packet_parser->parse_read_local_supported_commands_response(
        response,
        controller_param.supported_commands,
        HCI_SUPPORTED_COMMANDS_ARRAY_SIZE
    );


    uint8_t page_number = 0;
    response = AWAIT_COMMAND(controller_param.packet_factory->make_read_local_extended_features(page_number));
    controller_param.packet_parser->parse_read_local_extended_features_response(
        response,
        &page_number,
        &controller_param.last_features_classic_page_index,
        controller_param.features_classic,
        MAX_FEATURES_CLASSIC_PAGE_COUNT
    );

    assert(page_number == 0);
    page_number++;






    controller_param.simple_pairing_supported = HCI_SIMPLE_PAIRING_SUPPORTED(controller_param.features_classic[0].as_array);




    if (controller_param.simple_pairing_supported) {
        response = AWAIT_COMMAND(controller_param.packet_factory->make_write_simple_pairing_mode(HCI_SP_MODE_ENABLED));
        controller_param.packet_parser->parse_generic_command_complete(response);
    }


    if (HCI_LE_SPT_SUPPORTED(controller_param.features_classic[0].as_array)) {
        uint8_t simultaneous_le_host = HCI_SIMUL_LE_BREDR_SUPPORTED(controller_param.features_classic[0].as_array) ? BTM_BLE_SIMULTANEOUS_HOST : 0;
        response = AWAIT_COMMAND(
                       controller_param.packet_factory->make_ble_write_host_support(BTM_BLE_HOST_SUPPORT, simultaneous_le_host)
                   );

        controller_param.packet_parser->parse_generic_command_complete(response);
    }




    while (page_number <= controller_param.last_features_classic_page_index &&
            page_number < MAX_FEATURES_CLASSIC_PAGE_COUNT) {
        response = AWAIT_COMMAND(controller_param.packet_factory->make_read_local_extended_features(page_number));
        controller_param.packet_parser->parse_read_local_extended_features_response(
            response,
            &page_number,
            &controller_param.last_features_classic_page_index,
            controller_param.features_classic,
            MAX_FEATURES_CLASSIC_PAGE_COUNT
        );

        page_number++;
    }


    controller_param.secure_connections_supported = HCI_SC_CTRLR_SUPPORTED(controller_param.features_classic[2].as_array);
    if (controller_param.secure_connections_supported) {
        response = AWAIT_COMMAND(controller_param.packet_factory->make_write_secure_connections_host_support(HCI_SC_MODE_ENABLED));
        controller_param.packet_parser->parse_generic_command_complete(response);
    }



    controller_param.ble_supported = controller_param.last_features_classic_page_index >= 1 && HCI_LE_HOST_SUPPORTED(controller_param.features_classic[1].as_array);
    if (controller_param.ble_supported) {

        response = AWAIT_COMMAND(controller_param.packet_factory->make_ble_read_white_list_size());
        controller_param.packet_parser->parse_ble_read_white_list_size_response(response, &controller_param.ble_white_list_size);


        response = AWAIT_COMMAND(controller_param.packet_factory->make_ble_read_buffer_size());
        controller_param.packet_parser->parse_ble_read_buffer_size_response(
            response,
            &controller_param.acl_data_size_ble,
            &controller_param.acl_buffer_count_ble
        );


        if (controller_param.acl_data_size_ble == 0) {
            controller_param.acl_data_size_ble = controller_param.acl_data_size_classic;
        }


        response = AWAIT_COMMAND(controller_param.packet_factory->make_ble_read_supported_states());
        controller_param.packet_parser->parse_ble_read_supported_states_response(
            response,
            controller_param.ble_supported_states,
            sizeof(controller_param.ble_supported_states)
        );


        response = AWAIT_COMMAND(controller_param.packet_factory->make_ble_read_local_supported_features());
        controller_param.packet_parser->parse_ble_read_local_supported_features_response(
            response,
            &controller_param.features_ble
        );

        if (HCI_LE_ENHANCED_PRIVACY_SUPPORTED(controller_param.features_ble.as_array)) {
            response = AWAIT_COMMAND(controller_param.packet_factory->make_ble_read_resolving_list_size());
            controller_param.packet_parser->parse_ble_read_resolving_list_size_response(
                response,
                &controller_param.ble_resolving_list_max_size);
        }

        if (HCI_LE_DATA_LEN_EXT_SUPPORTED(controller_param.features_ble.as_array)) {

            response = AWAIT_COMMAND(controller_param.packet_factory->make_ble_write_suggested_default_data_length(BTM_BLE_DATA_SIZE_MAX, BTM_BLE_DATA_TX_TIME_MAX));
            controller_param.packet_parser->parse_generic_command_complete(response);

            response = AWAIT_COMMAND(controller_param.packet_factory->make_ble_read_suggested_default_data_length());
            controller_param.packet_parser->parse_ble_read_suggested_default_data_length_response(
                response,
                &controller_param.ble_suggested_default_data_length,
                &controller_param.ble_suggested_default_data_txtime);
        }


        response = AWAIT_COMMAND(controller_param.packet_factory->make_ble_set_event_mask(&BLE_EVENT_MASK));
        controller_param.packet_parser->parse_generic_command_complete(response);
    }


    response = AWAIT_COMMAND(controller_param.packet_factory->make_set_event_mask(&CLASSIC_EVENT_MASK));
    controller_param.packet_parser->parse_generic_command_complete(response);


    response = AWAIT_COMMAND(controller_param.packet_factory->make_write_sync_flow_control_enable(1));
    controller_param.packet_parser->parse_generic_command_complete(response);

    response = AWAIT_COMMAND(controller_param.packet_factory->make_write_default_erroneous_data_report(1));
    controller_param.packet_parser->parse_generic_command_complete(response);

    controller_param.readable = 1;

    return;
}
