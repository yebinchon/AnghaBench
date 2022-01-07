
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int password; int user; int addr; int port; int connectrep; int reqcmd; int responsemethod; int responseversion; int nmethods_max; int nmethods_min; int version; } ;


 char* CONFIG_ADDR ;
 int CONFIG_CONNECTREP ;
 int CONFIG_NMETHODS_MAX ;
 int CONFIG_NMETHODS_MIN ;
 int CONFIG_PORT ;
 int CONFIG_REQCMD ;
 int CONFIG_RESPONSEMETHOD ;
 int CONFIG_RESPONSEVERSION ;
 int CONFIG_VERSION ;
 TYPE_1__ config ;
 int logmsg (char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void resetdefaults(void)
{
  logmsg("Reset to defaults");
  config.version = CONFIG_VERSION;
  config.nmethods_min = CONFIG_NMETHODS_MIN;
  config.nmethods_max = CONFIG_NMETHODS_MAX;
  config.responseversion = CONFIG_RESPONSEVERSION;
  config.responsemethod = CONFIG_RESPONSEMETHOD;
  config.reqcmd = CONFIG_REQCMD;
  config.connectrep = CONFIG_CONNECTREP;
  config.port = CONFIG_PORT;
  strcpy(config.addr, CONFIG_ADDR);
  strcpy(config.user, "user");
  strcpy(config.password, "password");
}
