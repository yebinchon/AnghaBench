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
typedef  int /*<<< orphan*/  sign ;

/* Variables and functions */
 scalar_t__ OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char* str)
{
    FUNC1("%s , please press \"Enter\" to go on!\n", str);
    char sign[5] = {0};
    while(FUNC2(sign) == 0) {
        /* Flush anything already in the RX buffer */
        while(FUNC3((uint8_t *) sign) == OK) {
        }
        /* Read line */
        FUNC0((uint8_t*) sign, sizeof(sign) - 1);
    }
}