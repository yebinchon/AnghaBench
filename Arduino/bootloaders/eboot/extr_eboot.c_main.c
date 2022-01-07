
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eboot_command {scalar_t__ action; scalar_t__* args; } ;


 scalar_t__ ACTION_COPY_RAW ;
 scalar_t__ ACTION_LOAD_APP ;
 int SWRST ;
 int copy_raw (scalar_t__,scalar_t__,scalar_t__) ;
 int eboot_command_clear () ;
 scalar_t__ eboot_command_read (struct eboot_command*) ;
 int ets_putc (char) ;
 int ets_wdt_disable () ;
 int ets_wdt_enable () ;
 int load_app_from_flash_raw (scalar_t__) ;
 int print_version (int ) ;

void main()
{
    int res = 9;
    struct eboot_command cmd;

    print_version(0);

    if (eboot_command_read(&cmd) == 0) {

        eboot_command_clear();
        ets_putc('@');
    } else {

        cmd.action = ACTION_LOAD_APP;
        cmd.args[0] = 0;
        ets_putc('~');
    }

    if (cmd.action == ACTION_COPY_RAW) {
        ets_putc('c'); ets_putc('p'); ets_putc(':');
        ets_wdt_disable();
        res = copy_raw(cmd.args[0], cmd.args[1], cmd.args[2]);
        ets_wdt_enable();
        ets_putc('0'+res); ets_putc('\n');
        if (res == 0) {
            cmd.action = ACTION_LOAD_APP;
            cmd.args[0] = cmd.args[1];
        }
    }

    if (cmd.action == ACTION_LOAD_APP) {
        ets_putc('l'); ets_putc('d'); ets_putc('\n');
        res = load_app_from_flash_raw(cmd.args[0]);

        ets_putc('e'); ets_putc(':'); ets_putc('0'+res); ets_putc('\n');
    }

    if (res) {
        SWRST;
    }

    while(1){}
}
