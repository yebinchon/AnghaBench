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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  net_length ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MBUF_DONTWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nil_pcb ; 

__attribute__((used)) static int
FUNC5(mbuf_t packet, uint8_t type, uint32_t length, const void *value)
{
	uint32_t	net_length	= FUNC2(length);
	int			error		= 0;

	error = FUNC3(packet, FUNC4(packet), sizeof(type), &type, MBUF_DONTWAIT);
	if (error) {
		FUNC0(LOG_ERR, &nil_pcb, "failed to append the type (%d)", type);
		return error;
	}

	error = FUNC3(packet, FUNC4(packet), sizeof(net_length), &net_length, MBUF_DONTWAIT);
	if (error) {
		FUNC0(LOG_ERR, &nil_pcb, "failed to append the length (%u)", length);
		return error;
	}

	error = FUNC3(packet, FUNC4(packet), length, value, MBUF_DONTWAIT);
	if (error) {
		FUNC1(LOG_ERR, &nil_pcb, "failed to append the value");
		return error;
	}

	return error;
}