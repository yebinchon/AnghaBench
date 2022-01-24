#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_9__ {int /*<<< orphan*/  as_array; } ;
struct TYPE_11__ {scalar_t__ acl_data_size_classic; scalar_t__ last_features_classic_page_index; int simple_pairing_supported; int ble_supported; scalar_t__ acl_data_size_ble; int readable; TYPE_1__* packet_parser; TYPE_2__* packet_factory; int /*<<< orphan*/  ble_suggested_default_data_txtime; int /*<<< orphan*/  ble_suggested_default_data_length; TYPE_3__ features_ble; int /*<<< orphan*/  ble_resolving_list_max_size; int /*<<< orphan*/  ble_supported_states; int /*<<< orphan*/  acl_buffer_count_ble; int /*<<< orphan*/  ble_white_list_size; TYPE_4__* features_classic; scalar_t__ secure_connections_supported; int /*<<< orphan*/  supported_commands; int /*<<< orphan*/  address; int /*<<< orphan*/  bt_version; int /*<<< orphan*/  sco_buffer_count; int /*<<< orphan*/  sco_data_size; int /*<<< orphan*/  acl_buffer_count_classic; } ;
struct TYPE_10__ {int /*<<< orphan*/  as_array; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* make_write_default_erroneous_data_report ) (int) ;int /*<<< orphan*/  (* make_write_sync_flow_control_enable ) (int) ;int /*<<< orphan*/  (* make_set_event_mask ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* make_ble_set_event_mask ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* make_ble_read_suggested_default_data_length ) () ;int /*<<< orphan*/  (* make_ble_write_suggested_default_data_length ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* make_ble_read_resolving_list_size ) () ;int /*<<< orphan*/  (* make_ble_read_local_supported_features ) () ;int /*<<< orphan*/  (* make_ble_read_supported_states ) () ;int /*<<< orphan*/  (* make_ble_read_buffer_size ) () ;int /*<<< orphan*/  (* make_ble_read_white_list_size ) () ;int /*<<< orphan*/  (* make_write_secure_connections_host_support ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* make_read_local_extended_features ) (scalar_t__) ;int /*<<< orphan*/  (* make_ble_write_host_support ) (int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  (* make_write_simple_pairing_mode ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* make_read_local_supported_commands ) () ;int /*<<< orphan*/  (* make_read_bd_addr ) () ;int /*<<< orphan*/  (* make_read_local_version_info ) () ;int /*<<< orphan*/  (* make_host_buffer_size ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* make_set_adv_report_flow_control ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* make_set_c2h_flow_control ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* make_read_buffer_size ) () ;int /*<<< orphan*/  (* make_reset ) () ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* parse_generic_command_complete ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* parse_ble_read_suggested_default_data_length_response ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* parse_ble_read_resolving_list_size_response ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* parse_ble_read_local_supported_features_response ) (int /*<<< orphan*/ *,TYPE_3__*) ;int /*<<< orphan*/  (* parse_ble_read_supported_states_response ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* parse_ble_read_buffer_size_response ) (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* parse_ble_read_white_list_size_response ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* parse_read_local_extended_features_response ) (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,TYPE_4__*,scalar_t__) ;int /*<<< orphan*/  (* parse_read_local_supported_commands_response ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* parse_read_bd_addr_response ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* parse_read_local_version_info_response ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* parse_read_buffer_size_response ) (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BLE_ADV_REPORT_DISCARD_THRSHOLD ; 
 scalar_t__ BLE_ADV_REPORT_FLOW_CONTROL_NUM ; 
 int /*<<< orphan*/  BLE_EVENT_MASK ; 
 int /*<<< orphan*/  BTM_BLE_DATA_SIZE_MAX ; 
 int /*<<< orphan*/  BTM_BLE_DATA_TX_TIME_MAX ; 
 int /*<<< orphan*/  BTM_BLE_HOST_SUPPORT ; 
 scalar_t__ BTM_BLE_SIMULTANEOUS_HOST ; 
 int /*<<< orphan*/  CLASSIC_EVENT_MASK ; 
 int /*<<< orphan*/  HCI_HOST_FLOW_CTRL_ACL_ON ; 
 int /*<<< orphan*/  HCI_HOST_FLOW_CTRL_ADV_REPORT_ON ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_SC_MODE_ENABLED ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_SP_MODE_ENABLED ; 
 int /*<<< orphan*/  HCI_SUPPORTED_COMMANDS_ARRAY_SIZE ; 
 int /*<<< orphan*/  L2CAP_HOST_FC_ACL_BUFS ; 
 int /*<<< orphan*/  L2CAP_MTU_SIZE ; 
 scalar_t__ MAX_FEATURES_CLASSIC_PAGE_COUNT ; 
 int /*<<< orphan*/  SCO_HOST_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_6__ controller_param ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC48 (int) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC50 (int) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC57(void)
{
    BT_HDR *response;

    // Send the initial reset command
    response = FUNC0(controller_param.packet_factory->make_reset());
    controller_param.packet_parser->parse_generic_command_complete(response);

    // Request the classic buffer size next
    response = FUNC0(controller_param.packet_factory->make_read_buffer_size());
    controller_param.packet_parser->parse_read_buffer_size_response(
        response, &controller_param.acl_data_size_classic, &controller_param.acl_buffer_count_classic,
        &controller_param.sco_data_size, &controller_param.sco_buffer_count);

#if (C2H_FLOW_CONTROL_INCLUDED == TRUE)
    // Enable controller to host flow control
    response = FUNC0(controller_param.packet_factory->make_set_c2h_flow_control(HCI_HOST_FLOW_CTRL_ACL_ON));
    controller_param.packet_parser->parse_generic_command_complete(response);
#endif ///C2H_FLOW_CONTROL_INCLUDED == TRUE
#if (BLE_ADV_REPORT_FLOW_CONTROL == TRUE)
    // Enable adv flow control
    response = FUNC0(controller_param.packet_factory->make_set_adv_report_flow_control(HCI_HOST_FLOW_CTRL_ADV_REPORT_ON, (uint16_t)BLE_ADV_REPORT_FLOW_CONTROL_NUM, (uint16_t)BLE_ADV_REPORT_DISCARD_THRSHOLD));
    controller_param.packet_parser->parse_generic_command_complete(response);
#endif
    // Tell the controller about our buffer sizes and buffer counts next
    // TODO(zachoverflow): factor this out. eww l2cap contamination. And why just a hardcoded 10?
    response = FUNC0(
                   controller_param.packet_factory->make_host_buffer_size(
                       L2CAP_MTU_SIZE,
                       SCO_HOST_BUFFER_SIZE,
                       L2CAP_HOST_FC_ACL_BUFS,
                       10
                   )
               );

    controller_param.packet_parser->parse_generic_command_complete(response);

    // Read the local version info off the controller next, including
    // information such as manufacturer and supported HCI version
    response = FUNC0(controller_param.packet_factory->make_read_local_version_info());
    controller_param.packet_parser->parse_read_local_version_info_response(response, &controller_param.bt_version);

    // Read the bluetooth address off the controller next
    response = FUNC0(controller_param.packet_factory->make_read_bd_addr());
    controller_param.packet_parser->parse_read_bd_addr_response(response, &controller_param.address);

    // Request the controller's supported commands next
    response = FUNC0(controller_param.packet_factory->make_read_local_supported_commands());
    controller_param.packet_parser->parse_read_local_supported_commands_response(
        response,
        controller_param.supported_commands,
        HCI_SUPPORTED_COMMANDS_ARRAY_SIZE
    );

    // Read page 0 of the controller features next
    uint8_t page_number = 0;
    response = FUNC0(controller_param.packet_factory->make_read_local_extended_features(page_number));
    controller_param.packet_parser->parse_read_local_extended_features_response(
        response,
        &page_number,
        &controller_param.last_features_classic_page_index,
        controller_param.features_classic,
        MAX_FEATURES_CLASSIC_PAGE_COUNT
    );

    FUNC8(page_number == 0);
    page_number++;

    // Inform the controller what page 0 features we support, based on what
    // it told us it supports. We need to do this first before we request the
    // next page, because the controller's response for page 1 may be
    // dependent on what we configure from page 0
#if (BT_SSP_INCLUDED == TRUE)
    controller_param.simple_pairing_supported = FUNC6(controller_param.features_classic[0].as_array);
#else
    controller_param.simple_pairing_supported = false;
#endif

    if (controller_param.simple_pairing_supported) {
        response = FUNC0(controller_param.packet_factory->make_write_simple_pairing_mode(HCI_SP_MODE_ENABLED));
        controller_param.packet_parser->parse_generic_command_complete(response);
    }

#if (BLE_INCLUDED == TRUE)
    if (FUNC4(controller_param.features_classic[0].as_array)) {
        uint8_t simultaneous_le_host = FUNC7(controller_param.features_classic[0].as_array) ? BTM_BLE_SIMULTANEOUS_HOST : 0;
        response = FUNC0(
                       controller_param.packet_factory->make_ble_write_host_support(BTM_BLE_HOST_SUPPORT, simultaneous_le_host)
                   );

        controller_param.packet_parser->parse_generic_command_complete(response);
    }
#endif

    // Done telling the controller about what page 0 features we support
    // Request the remaining feature pages
    while (page_number <= controller_param.last_features_classic_page_index &&
            page_number < MAX_FEATURES_CLASSIC_PAGE_COUNT) {
        response = FUNC0(controller_param.packet_factory->make_read_local_extended_features(page_number));
        controller_param.packet_parser->parse_read_local_extended_features_response(
            response,
            &page_number,
            &controller_param.last_features_classic_page_index,
            controller_param.features_classic,
            MAX_FEATURES_CLASSIC_PAGE_COUNT
        );

        page_number++;
    }

#if (SC_MODE_INCLUDED == TRUE)
    controller_param.secure_connections_supported = FUNC5(controller_param.features_classic[2].as_array);
    if (controller_param.secure_connections_supported) {
        response = FUNC0(controller_param.packet_factory->make_write_secure_connections_host_support(HCI_SC_MODE_ENABLED));
        controller_param.packet_parser->parse_generic_command_complete(response);
    }
#endif

#if (BLE_INCLUDED == TRUE)
    controller_param.ble_supported = controller_param.last_features_classic_page_index >= 1 && FUNC3(controller_param.features_classic[1].as_array);
    if (controller_param.ble_supported) {
        // Request the ble white list size next
        response = FUNC0(controller_param.packet_factory->make_ble_read_white_list_size());
        controller_param.packet_parser->parse_ble_read_white_list_size_response(response, &controller_param.ble_white_list_size);

        // Request the ble buffer size next
        response = FUNC0(controller_param.packet_factory->make_ble_read_buffer_size());
        controller_param.packet_parser->parse_ble_read_buffer_size_response(
            response,
            &controller_param.acl_data_size_ble,
            &controller_param.acl_buffer_count_ble
        );

        // Response of 0 indicates ble has the same buffer size as classic
        if (controller_param.acl_data_size_ble == 0) {
            controller_param.acl_data_size_ble = controller_param.acl_data_size_classic;
        }

        // Request the ble supported states next
        response = FUNC0(controller_param.packet_factory->make_ble_read_supported_states());
        controller_param.packet_parser->parse_ble_read_supported_states_response(
            response,
            controller_param.ble_supported_states,
            sizeof(controller_param.ble_supported_states)
        );

        // Request the ble supported features next
        response = FUNC0(controller_param.packet_factory->make_ble_read_local_supported_features());
        controller_param.packet_parser->parse_ble_read_local_supported_features_response(
            response,
            &controller_param.features_ble
        );

        if (FUNC2(controller_param.features_ble.as_array)) {
            response = FUNC0(controller_param.packet_factory->make_ble_read_resolving_list_size());
            controller_param.packet_parser->parse_ble_read_resolving_list_size_response(
                response,
                &controller_param.ble_resolving_list_max_size);
        }

        if (FUNC1(controller_param.features_ble.as_array)) {
            /* set default tx data length to MAX 251 */
            response = FUNC0(controller_param.packet_factory->make_ble_write_suggested_default_data_length(BTM_BLE_DATA_SIZE_MAX, BTM_BLE_DATA_TX_TIME_MAX));
            controller_param.packet_parser->parse_generic_command_complete(response);

            response = FUNC0(controller_param.packet_factory->make_ble_read_suggested_default_data_length());
            controller_param.packet_parser->parse_ble_read_suggested_default_data_length_response(
                response,
                &controller_param.ble_suggested_default_data_length,
                &controller_param.ble_suggested_default_data_txtime);
        }

        // Set the ble event mask next
        response = FUNC0(controller_param.packet_factory->make_ble_set_event_mask(&BLE_EVENT_MASK));
        controller_param.packet_parser->parse_generic_command_complete(response);
    }
#endif

    response = FUNC0(controller_param.packet_factory->make_set_event_mask(&CLASSIC_EVENT_MASK));
    controller_param.packet_parser->parse_generic_command_complete(response);

#if (BTM_SCO_HCI_INCLUDED == TRUE)
    response = FUNC0(controller_param.packet_factory->make_write_sync_flow_control_enable(1));
    controller_param.packet_parser->parse_generic_command_complete(response);

    response = FUNC0(controller_param.packet_factory->make_write_default_erroneous_data_report(1));
    controller_param.packet_parser->parse_generic_command_complete(response);
#endif
    controller_param.readable = true;
    // return future_new_immediate(FUTURE_SUCCESS);
    return;
}