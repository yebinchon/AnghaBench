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
typedef  int UINT ;
typedef  void* UCHAR ;
struct TYPE_2__ {void* Type; void* Length; } ;
typedef  TYPE_1__ ICMPV6_OPTION ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void**,int) ; 
 void** FUNC3 (int) ; 

void FUNC4(BUF *b, UCHAR type, void *header_pointer, UINT total_size)
{
	UINT packet_size;
	UCHAR *packet;
	ICMPV6_OPTION *opt;
	// Validate arguments
	if (b == NULL || header_pointer == NULL)
	{
		return;
	}

	packet_size = ((total_size + 7) / 8) * 8;
	packet = FUNC3(packet_size);

	FUNC0(packet, header_pointer, total_size);
	opt = (ICMPV6_OPTION *)packet;
	opt->Length = (UCHAR)(packet_size / 8);
	opt->Type = type;

	FUNC2(b, packet, packet_size);

	FUNC1(packet);
}