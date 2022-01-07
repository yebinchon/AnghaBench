
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int * func; int * hint; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int end; int data; int register_address; int chip_address; } ;


 int ESP_ERROR_CHECK (int ) ;
 int arg_end (int) ;
 int arg_int0 (char*,char*,char*,char*) ;
 int arg_int1 (char*,char*,char*,char*) ;
 int arg_intn (int *,int *,char*,int ,int,char*) ;
 int do_i2cset_cmd ;
 int esp_console_cmd_register (TYPE_1__ const*) ;
 TYPE_2__ i2cset_args ;

__attribute__((used)) static void register_i2cset(void)
{
    i2cset_args.chip_address = arg_int1("c", "chip", "<chip_addr>", "Specify the address of the chip on that bus");
    i2cset_args.register_address = arg_int0("r", "register", "<register_addr>", "Specify the address on that chip to read from");
    i2cset_args.data = arg_intn(((void*)0), ((void*)0), "<data>", 0, 256, "Specify the data to write to that data address");
    i2cset_args.end = arg_end(2);
    const esp_console_cmd_t i2cset_cmd = {
        .command = "i2cset",
        .help = "Set registers visible through the I2C bus",
        .hint = ((void*)0),
        .func = &do_i2cset_cmd,
        .argtable = &i2cset_args
    };
    ESP_ERROR_CHECK(esp_console_cmd_register(&i2cset_cmd));
}
