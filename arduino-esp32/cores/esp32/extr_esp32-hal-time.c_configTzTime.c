
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SNTP_OPMODE_POLL ;
 int setenv (char*,char const*,int) ;
 scalar_t__ sntp_enabled () ;
 int sntp_init () ;
 int sntp_setoperatingmode (int ) ;
 int sntp_setservername (int,char*) ;
 int sntp_stop () ;
 int tcpip_adapter_init () ;
 int tzset () ;

void configTzTime(const char* tz, const char* server1, const char* server2, const char* server3)
{
    tcpip_adapter_init();
    if(sntp_enabled()){
        sntp_stop();
    }
    sntp_setoperatingmode(SNTP_OPMODE_POLL);
    sntp_setservername(0, (char*)server1);
    sntp_setservername(1, (char*)server2);
    sntp_setservername(2, (char*)server3);
    sntp_init();
    setenv("TZ", tz, 1);
    tzset();
}
