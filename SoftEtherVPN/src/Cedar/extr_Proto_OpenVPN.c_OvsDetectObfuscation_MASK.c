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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  OPENVPN_PACKET ;

/* Variables and functions */
 void* FUNC0 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ INFINITE ; 
 scalar_t__ OPENVPN_SCRAMBLE_MODE_DISABLED ; 
 scalar_t__ OPENVPN_SCRAMBLE_MODE_OBFUSCATE ; 
 scalar_t__ OPENVPN_SCRAMBLE_MODE_REVERSE ; 
 scalar_t__ OPENVPN_SCRAMBLE_MODE_XORMASK ; 
 scalar_t__ OPENVPN_SCRAMBLE_MODE_XORPTRPOS ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

UINT FUNC8(void *data, UINT size, char *xormask)
{
	UINT ret;
	void *tmp;
	OPENVPN_PACKET *parsed_packet;
	// Validate arguments
	if (data == NULL || size == 0)
	{
		return INFINITE;
	}

	ret = INFINITE;
	tmp = NULL;

	// OPENVPN_SCRAMBLE_MODE_DISABLED
	parsed_packet = FUNC6(data, size);
	if (parsed_packet != NULL)
	{
		ret = OPENVPN_SCRAMBLE_MODE_DISABLED;
		goto final;
	}

	// OPENVPN_SCRAMBLE_MODE_XORMASK
	tmp = FUNC0(data, size);

	FUNC3(tmp, size, xormask, FUNC7(xormask));

	parsed_packet = FUNC6(tmp, size);
	if (parsed_packet != NULL)
	{
		ret = OPENVPN_SCRAMBLE_MODE_XORMASK;
		goto final;
	}

	FUNC1(tmp);

	// OPENVPN_SCRAMBLE_MODE_XORPTRPOS
	tmp = FUNC0(data, size);

	FUNC4(tmp, size);

	parsed_packet = FUNC6(tmp, size);
	if (parsed_packet != NULL)
	{
		ret = OPENVPN_SCRAMBLE_MODE_XORPTRPOS;
		goto final;
	}

	FUNC1(tmp);

	// OPENVPN_SCRAMBLE_MODE_REVERSE
	tmp = FUNC0(data, size);

	FUNC2(tmp, size);

	parsed_packet = FUNC6(tmp, size);
	if (parsed_packet != NULL)
	{
		ret = OPENVPN_SCRAMBLE_MODE_REVERSE;
		goto final;
	}

	FUNC1(tmp);

	// OPENVPN_SCRAMBLE_MODE_OBFUSCATE
	tmp = FUNC0(data, size);

	FUNC3(tmp, size, xormask, FUNC7(xormask));
	FUNC4(tmp, size);
	FUNC2(tmp, size);
	FUNC4(tmp, size);

	parsed_packet = FUNC6(tmp, size);
	if (parsed_packet != NULL)
	{
		ret = OPENVPN_SCRAMBLE_MODE_OBFUSCATE;
		goto final;
	}

final:
	FUNC5(parsed_packet);
	FUNC1(tmp);
	return ret;
}