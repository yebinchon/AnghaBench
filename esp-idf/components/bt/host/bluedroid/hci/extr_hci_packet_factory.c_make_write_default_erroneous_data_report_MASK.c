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
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_WRITE_ERRONEOUS_DATA_RPT ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int const,int**) ; 

__attribute__((used)) static BT_HDR *FUNC2(uint8_t enable)
{
    uint8_t *stream;
    const uint8_t parameter_size = 1;
    BT_HDR *packet = FUNC1(HCI_WRITE_ERRONEOUS_DATA_RPT, parameter_size, &stream);

    FUNC0(stream, enable);
    return packet;
}