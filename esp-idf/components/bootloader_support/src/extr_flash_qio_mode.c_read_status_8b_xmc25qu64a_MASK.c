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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_OTPEN ; 
 int /*<<< orphan*/  CMD_RDSR ; 
 int /*<<< orphan*/  CMD_WRDI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  g_rom_flashchip ; 

__attribute__((used)) static unsigned FUNC2(void)
{
    FUNC1(CMD_OTPEN, 0, 0, 0);  /* Enter OTP mode */
    FUNC0(&g_rom_flashchip);
    uint32_t read_status = FUNC1(CMD_RDSR, 0, 0, 8);
    FUNC1(CMD_WRDI, 0, 0, 0);   /* Exit OTP mode */
    return read_status;
}