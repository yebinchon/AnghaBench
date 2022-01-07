
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* scl; TYPE_3__* sda; TYPE_2__* freq; TYPE_1__* port; int end; } ;
struct TYPE_9__ {int * ival; } ;
struct TYPE_8__ {int * ival; } ;
struct TYPE_7__ {int * ival; scalar_t__ count; } ;
struct TYPE_6__ {int * ival; scalar_t__ count; } ;


 scalar_t__ ESP_OK ;
 int arg_parse (int,char**,void**) ;
 int arg_print_errors (int ,int ,char*) ;
 int i2c_frequency ;
 scalar_t__ i2c_get_port (int ,int *) ;
 int i2c_gpio_scl ;
 int i2c_gpio_sda ;
 int i2c_port ;
 TYPE_5__ i2cconfig_args ;
 int stderr ;

__attribute__((used)) static int do_i2cconfig_cmd(int argc, char **argv)
{
    int nerrors = arg_parse(argc, argv, (void **)&i2cconfig_args);
    if (nerrors != 0) {
        arg_print_errors(stderr, i2cconfig_args.end, argv[0]);
        return 0;
    }


    if (i2cconfig_args.port->count) {
        if (i2c_get_port(i2cconfig_args.port->ival[0], &i2c_port) != ESP_OK) {
            return 1;
        }
    }

    if (i2cconfig_args.freq->count) {
        i2c_frequency = i2cconfig_args.freq->ival[0];
    }

    i2c_gpio_sda = i2cconfig_args.sda->ival[0];

    i2c_gpio_scl = i2cconfig_args.scl->ival[0];
    return 0;
}
