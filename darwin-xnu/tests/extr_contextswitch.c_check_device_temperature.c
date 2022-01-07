
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int FILE ;


 int POWERCTRL_SUCCESS_STR ;
 int T_END ;
 int T_FAIL (char*) ;
 int T_PASS (char*) ;
 int T_PERF (char*,double,char*,char*) ;
 int fgets (char*,int,int *) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char*,int ) ;

void check_device_temperature(void)
{
    char buffer[256];
    FILE *pipe = popen("powerctrl Factor1", "r");

    if (pipe == ((void*)0)) {
        T_FAIL("Failed to check device temperature");
        T_END;
    }

    fgets(buffer, sizeof(buffer), pipe);

    if (strncmp(POWERCTRL_SUCCESS_STR, buffer, strlen(POWERCTRL_SUCCESS_STR))) {
        T_PERF("temperature", 0.0, "factor", "device temperature");
    } else {
        T_PASS("Device temperature check pass");
        T_PERF("temperature", 1.0, "factor", "device temperature");
    }
    pclose(pipe);
}
