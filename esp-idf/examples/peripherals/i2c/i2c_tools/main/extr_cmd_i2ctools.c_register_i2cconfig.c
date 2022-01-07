
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; void* scl; void* sda; void* freq; void* port; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 void* arg_int0 (int *,char*,char*,char*) ;
 void* arg_int1 (int *,char*,char*,char*) ;
 int do_i2cconfig_cmd ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ i2cconfig_args ;

__attribute__((used)) static void register_i2cconfig(void)
{
    i2cconfig_args.port = arg_int0(((void*)0), "port", "<0|1>", "Set the I2C bus port number");
    i2cconfig_args.freq = arg_int0(((void*)0), "freq", "<Hz>", "Set the frequency(Hz) of I2C bus");
    i2cconfig_args.sda = arg_int1(((void*)0), "sda", "<gpio>", "Set the gpio for I2C SDA");
    i2cconfig_args.scl = arg_int1(((void*)0), "scl", "<gpio>", "Set the gpio for I2C SCL");
    i2cconfig_args.end = arg_end(2);
    const esp_console_cmd_t i2cconfig_cmd = {
        .command = "i2cconfig",
        .help = "Config I2C bus",
        .hint = ((void*)0),
        .func = &do_i2cconfig_cmd,
        .argtable = &i2cconfig_args
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&i2cconfig_cmd));
}
