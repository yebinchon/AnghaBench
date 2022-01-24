#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wps_data {int state; int /*<<< orphan*/  last_msg; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
typedef  enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
struct TYPE_2__ {int /*<<< orphan*/  ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  RECEIVED_M2D 134 
 int RECV_M2 ; 
#define  SEND_M1 133 
#define  SEND_M3 132 
#define  SEND_M5 131 
#define  SEND_M7 130 
#define  SEND_WSC_NACK 129 
#define  WPS_MSG_DONE 128 
 int WSC_ACK ; 
 int WSC_Done ; 
 int WSC_MSG ; 
 int WSC_NACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (struct wps_data*) ; 
 struct wpabuf* FUNC4 (struct wps_data*) ; 
 struct wpabuf* FUNC5 (struct wps_data*) ; 
 struct wpabuf* FUNC6 (struct wps_data*) ; 
 struct wpabuf* FUNC7 (struct wps_data*) ; 
 struct wpabuf* FUNC8 (struct wps_data*) ; 
 struct wpabuf* FUNC9 (struct wps_data*) ; 

struct wpabuf * FUNC10(struct wps_data *wps,
				     enum wsc_op_code *op_code)
{
	struct wpabuf *msg;

	switch (wps->state) {
	case SEND_M1:
		msg = FUNC3(wps);
		*op_code = WSC_MSG;
		break;
	case SEND_M3:
		msg = FUNC4(wps);
		*op_code = WSC_MSG;
		break;
	case SEND_M5:
		msg = FUNC5(wps);
		*op_code = WSC_MSG;
		break;
	case SEND_M7:
		msg = FUNC6(wps);
		*op_code = WSC_MSG;
		break;
	case RECEIVED_M2D:
		if (wps->wps->ap) {
			msg = FUNC9(wps);
			*op_code = WSC_NACK;
			break;
		}
		msg = FUNC7(wps);
		*op_code = WSC_ACK;
		if (msg) {
			/* Another M2/M2D may be received */
			wps->state = RECV_M2;
		}
		break;
	case SEND_WSC_NACK:
		msg = FUNC9(wps);
		*op_code = WSC_NACK;
		break;
	case WPS_MSG_DONE:
		msg = FUNC8(wps);
		*op_code = WSC_Done;
		break;
	default:
		FUNC0(MSG_DEBUG,  "WPS: Unsupported state %d for building "
			   "a message", wps->state);
		msg = NULL;
		break;
	}

	if (*op_code == WSC_MSG && msg) {
		/* Save a copy of the last message for Authenticator derivation
		 */
		FUNC2(wps->last_msg);
		wps->last_msg = FUNC1(msg);
	}

	return msg;
}