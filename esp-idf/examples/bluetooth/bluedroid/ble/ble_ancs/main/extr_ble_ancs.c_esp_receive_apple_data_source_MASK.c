#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_ANCS_TAG ; 
#define  CommandIDGetAppAttributes 138 
#define  CommandIDGetNotificationAttributes 137 
#define  CommandIDPerformNotificationAction 136 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
#define  NotificationAttributeIDAppIdentifier 135 
#define  NotificationAttributeIDDate 134 
#define  NotificationAttributeIDMessage 133 
#define  NotificationAttributeIDMessageSize 132 
#define  NotificationAttributeIDNegativeActionLabel 131 
#define  NotificationAttributeIDPositiveActionLabel 130 
#define  NotificationAttributeIDSubtitle 129 
#define  NotificationAttributeIDTitle 128 
 int /*<<< orphan*/  FUNC2 (char*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,scalar_t__) ; 

void FUNC4(uint8_t *message, uint16_t message_len) 
{
    //esp_log_buffer_hex("data source", message, message_len);
    if (!message || message_len == 0) {
        return;
    }
    uint8_t Command_id = message[0];
    switch (Command_id)
    {
        case CommandIDGetNotificationAttributes: {
            uint32_t NotificationUID = (message[1]) | (message[2]<< 8) | (message[3]<< 16) | (message[4] << 24);
            uint32_t remian_attr_len = message_len - 5;
            uint8_t *attrs = &message[5];
            FUNC1(BLE_ANCS_TAG, "recevice Notification Attributes response Command_id %d NotificationUID %d", Command_id, NotificationUID);
            while(remian_attr_len > 0) {
                uint8_t AttributeID = attrs[0];
                uint16_t len = attrs[1] | (attrs[2] << 8);
                if(len > (remian_attr_len -3)) {
                    FUNC0(BLE_ANCS_TAG, "data error");
                    break;
                }
                switch (AttributeID)
                {
                    case NotificationAttributeIDAppIdentifier:
                        FUNC2("Identifier", &attrs[3], len);
                        break;
                    case NotificationAttributeIDTitle:
                        FUNC2("Title", &attrs[3], len);
                        break;
                    case NotificationAttributeIDSubtitle:
                        FUNC2("Subtitle", &attrs[3], len);
                        break;
                    case NotificationAttributeIDMessage:
                        FUNC2("Message", &attrs[3], len);
                        break;
                    case NotificationAttributeIDMessageSize:
                        FUNC2("MessageSize", &attrs[3], len);
                        break;
                    case NotificationAttributeIDDate:
                        //yyyyMMdd'T'HHmmSS
                        FUNC2("Date", &attrs[3], len);
                        break;
                    case NotificationAttributeIDPositiveActionLabel:
                        FUNC3("PActionLabel", &attrs[3], len);
                        break;
                    case NotificationAttributeIDNegativeActionLabel:
                        FUNC3("NActionLabel", &attrs[3], len);
                        break;
                    default:
                        FUNC3("unknownAttributeID", &attrs[3], len);
                        break;
                }

                attrs += (1 + 2 + len);
                remian_attr_len -= (1 + 2 + len);
            }

            break;
        }
        case CommandIDGetAppAttributes:
            FUNC1(BLE_ANCS_TAG, "recevice APP Attributes response");
            break;
        case CommandIDPerformNotificationAction:
            FUNC1(BLE_ANCS_TAG, "recevice Perform Notification Action");
            break;
        default:
            FUNC1(BLE_ANCS_TAG, "unknown Command ID");
            break;
    }
}