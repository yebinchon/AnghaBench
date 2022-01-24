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
struct TYPE_5__ {int /*<<< orphan*/  end; void* scl; void* sda; void* freq; void* port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  do_i2cconfig_cmd ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 TYPE_2__ i2cconfig_args ; 

__attribute__((used)) static void FUNC5(void)
{
    i2cconfig_args.port = FUNC2(NULL, "port", "<0|1>", "Set the I2C bus port number");
    i2cconfig_args.freq = FUNC2(NULL, "freq", "<Hz>", "Set the frequency(Hz) of I2C bus");
    i2cconfig_args.sda = FUNC3(NULL, "sda", "<gpio>", "Set the gpio for I2C SDA");
    i2cconfig_args.scl = FUNC3(NULL, "scl", "<gpio>", "Set the gpio for I2C SCL");
    i2cconfig_args.end = FUNC1(2);
    const esp_console_cmd_t i2cconfig_cmd = {
        .command = "i2cconfig",
        .help = "Config I2C bus",
        .hint = NULL,
        .func = &do_i2cconfig_cmd,
        .argtable = &i2cconfig_args
    };
    FUNC0(FUNC4(&i2cconfig_cmd));
}