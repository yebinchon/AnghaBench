
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int strtol (char const*,char**,int) ;

bool unity_util_convert_mac_from_string(const char* mac_str, uint8_t *mac_addr)
{
    uint8_t loop = 0;
    uint8_t tmp = 0;
    const char *start;
    char *stop;

    for (loop = 0; loop < 6; loop++) {
        start = mac_str + loop * 3;
        tmp = strtol(start, &stop, 16);
        if (stop - start == 2 && (*stop == ':' || (*stop == 0 && loop == 5))) {
            mac_addr[loop] = tmp;
        } else {
            return 0;
        }
    }
    return 1;
}
