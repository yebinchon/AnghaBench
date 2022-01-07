
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int hexstr_2_bin (char*,int *,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

int get_value_string(char *value_in, char *buf)
{
    int result = -1;

    uint16_t length = strlen(value_in);

    if (length > 2) {
        if (value_in[0] == '0' && value_in[1] == 'x') {
            buf[(length - 2) / 2] = 0;
            result = hexstr_2_bin(&value_in[2], (uint8_t *)buf, (length - 2) / 2);
            length = (length - 2) / 2;
        } else {
            strcpy(buf, value_in);
            result = 0;
        }
    } else {
        strcpy(buf, value_in);
        result = 0;
    }
    return result;
}
