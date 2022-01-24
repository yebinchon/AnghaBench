#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  header ;
typedef  int USHORT ;
typedef  int UINT ;
typedef  scalar_t__ UCHAR ;
struct TYPE_3__ {scalar_t__ NextPayload; int /*<<< orphan*/  PayloadSize; } ;
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  IKE_PACKET_PAYLOAD ;
typedef  TYPE_1__ IKE_COMMON_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ IKE_PAYLOAD_NONE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (void*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 

LIST *FUNC11(void *data, UINT size, UCHAR first_payload, UINT *total_read_size)
{
	LIST *o;
	BUF *b;
	UCHAR payload_type = first_payload;
	UINT total = 0;
	// Validate arguments
	if (data == NULL)
	{
		return NULL;
	}

	o = FUNC8(NULL);
	b = FUNC7(data, size);

	while (payload_type != IKE_PAYLOAD_NONE)
	{
		// Read the common header
		IKE_COMMON_HEADER header;
		USHORT payload_size;
		BUF *payload_data;
		IKE_PACKET_PAYLOAD *pay;

		if (FUNC9(b, &header, sizeof(header)) != sizeof(header))
		{
			FUNC1("ISAKMP: Broken Packet (Invalid Payload Size)\n");

LABEL_ERROR:
			// Header reading failure
			FUNC5(o);
			o = NULL;

			break;
		}

		total += sizeof(header);

		// Get the payload size
		payload_size = FUNC2(header.PayloadSize);

		if (payload_size < sizeof(header))
		{
			FUNC1("ISAKMP: Broken Packet (Invalid Payload Size)\n");
			goto LABEL_ERROR;
		}

		payload_size -= sizeof(header);

		// Read the payload data
		payload_data = FUNC10(b, payload_size);
		if (payload_data == NULL)
		{
			// Data read failure
			FUNC1("ISAKMP: Broken Packet (Invalid Payload Data)\n");
			goto LABEL_ERROR;
		}

		total += payload_size;

		// Analyse the payload body
		if (FUNC4(payload_type))
		{
			// Supported payload type
			pay = FUNC6(payload_type, payload_data);

			if (pay == NULL)
			{
				FUNC3(payload_data);
				FUNC1("ISAKMP: Broken Packet (Payload Data Parse Failed)\n");
				goto LABEL_ERROR;
			}

			FUNC0(o, pay);
		}
		else
		{
			// Unsupported payload type
			FUNC1("ISAKMP: Ignored Payload Type: %u\n", payload_type);
			pay = FUNC6(payload_type, payload_data);

			if (pay == NULL)
			{
				FUNC3(payload_data);
				FUNC1("ISAKMP: Broken Packet (Payload Data Parse Failed)\n");
				goto LABEL_ERROR;
			}

			FUNC0(o, pay);
		}

		payload_type = header.NextPayload;

		FUNC3(payload_data);
	}

	FUNC3(b);

	if (total_read_size != NULL)
	{
		*total_read_size = total;
	}

	return o;
}