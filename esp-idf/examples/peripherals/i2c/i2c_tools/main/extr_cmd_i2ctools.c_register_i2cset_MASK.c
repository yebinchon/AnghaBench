#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int /*<<< orphan*/ * func; int /*<<< orphan*/ * hint; } ;
typedef  TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int /*<<< orphan*/  end; int /*<<< orphan*/  data; int /*<<< orphan*/  register_address; int /*<<< orphan*/  chip_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  do_i2cset_cmd ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 
 TYPE_2__ i2cset_args ; 

__attribute__((used)) static void FUNC6(void)
{
    i2cset_args.chip_address = FUNC3("c", "chip", "<chip_addr>", "Specify the address of the chip on that bus");
    i2cset_args.register_address = FUNC2("r", "register", "<register_addr>", "Specify the address on that chip to read from");
    i2cset_args.data = FUNC4(NULL, NULL, "<data>", 0, 256, "Specify the data to write to that data address");
    i2cset_args.end = FUNC1(2);
    const esp_console_cmd_t i2cset_cmd = {
        .command = "i2cset",
        .help = "Set registers visible through the I2C bus",
        .hint = NULL,
        .func = &do_i2cset_cmd,
        .argtable = &i2cset_args
    };
    FUNC0(FUNC5(&i2cset_cmd));
}