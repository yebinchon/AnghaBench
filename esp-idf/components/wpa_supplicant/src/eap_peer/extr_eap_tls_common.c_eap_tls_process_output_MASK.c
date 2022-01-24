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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_ssl_data {size_t tls_out_pos; size_t tls_out_limit; int /*<<< orphan*/ * tls_out; int /*<<< orphan*/  conn; TYPE_1__* eap; scalar_t__ include_tls_length; } ;
struct TYPE_2__ {int /*<<< orphan*/  ssl_ctx; } ;
typedef  scalar_t__ EapType ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int EAP_TLS_FLAGS_LENGTH_INCLUDED ; 
 int EAP_TLS_FLAGS_MORE_FRAGMENTS ; 
 scalar_t__ EAP_TYPE_PEAP ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eap_ssl_data*) ; 
 struct wpabuf* FUNC1 (scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int* FUNC7 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,scalar_t__,size_t) ; 

__attribute__((used)) static int FUNC10(struct eap_ssl_data *data, EapType eap_type,
				  int peap_version, u8 id, int ret,
				  struct wpabuf **out_data)
{
	size_t len;
	u8 *flags;
	int more_fragments, length_included;

	if (data->tls_out == NULL)
		return -1;
	len = FUNC6(data->tls_out) - data->tls_out_pos;
	FUNC4(MSG_DEBUG, "SSL: %lu bytes left to be sent out (of total "
		   "%lu bytes)",
		   (unsigned long) len,
		   (unsigned long) FUNC6(data->tls_out));

	/*
	 * Limit outgoing message to the configured maximum size. Fragment
	 * message if needed.
	 */
	if (len > data->tls_out_limit) {
		more_fragments = 1;
		len = data->tls_out_limit;
		FUNC4(MSG_DEBUG, "SSL: sending %lu bytes, more fragments "
			   "will follow", (unsigned long) len);
	} else
		more_fragments = 0;

	length_included = data->tls_out_pos == 0 &&
		(FUNC6(data->tls_out) > data->tls_out_limit ||
		 data->include_tls_length);
	if (!length_included &&
	    eap_type == EAP_TYPE_PEAP && peap_version == 0 &&
	    !FUNC3(data->eap->ssl_ctx, data->conn)) {
		/*
		 * Windows Server 2008 NPS really wants to have the TLS Message
		 * length included in phase 0 even for unfragmented frames or
		 * it will get very confused with Compound MAC calculation and
		 * Outer TLVs.
		 */
		length_included = 1;
	}

	*out_data = FUNC1(eap_type, 1 + length_included * 4 + len,
				      EAP_CODE_RESPONSE, id);
	if (*out_data == NULL) {
	    FUNC2("[Debug] out_data is null, return \n");
		return -1;
    } 

	flags = FUNC7(*out_data, 1);
	*flags = peap_version;
	if (more_fragments)
		*flags |= EAP_TLS_FLAGS_MORE_FRAGMENTS;
	if (length_included) {
		*flags |= EAP_TLS_FLAGS_LENGTH_INCLUDED;
		FUNC8(*out_data, FUNC6(data->tls_out));
	}
	FUNC9(*out_data,
			FUNC5(data->tls_out) + data->tls_out_pos,
			len);
	data->tls_out_pos += len;

	if (!more_fragments)
		FUNC0(data);

	return ret;
}