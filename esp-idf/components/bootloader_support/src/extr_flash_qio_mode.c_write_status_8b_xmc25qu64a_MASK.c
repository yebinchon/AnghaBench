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

/* Variables and functions */
 int /*<<< orphan*/  CMD_OTPEN ; 
 int /*<<< orphan*/  CMD_WRDI ; 
 int /*<<< orphan*/  CMD_WRSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_rom_flashchip ; 

__attribute__((used)) static void FUNC2(unsigned new_status)
{
    FUNC1(CMD_OTPEN, 0, 0, 0);  /* Enter OTP mode */
    FUNC0(&g_rom_flashchip);
    FUNC1(CMD_WRSR, new_status, 8, 0);
    FUNC0(&g_rom_flashchip);
    FUNC1(CMD_WRDI, 0, 0, 0);   /* Exit OTP mode */
}