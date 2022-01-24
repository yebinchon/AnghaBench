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
typedef  int /*<<< orphan*/  tBTA_TRANSPORT ;
typedef  int /*<<< orphan*/  tBTA_STATUS ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(BD_ADDR bd_addr, tBTA_TRANSPORT transport, tBTA_STATUS enc_status)
{
    FUNC1(bd_addr);
    FUNC1(transport);
    FUNC0("enc_status = %x\n", enc_status);
    return;
}