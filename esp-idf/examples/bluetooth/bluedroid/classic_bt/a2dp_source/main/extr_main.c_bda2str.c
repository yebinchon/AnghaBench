
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int* esp_bd_addr_t ;


 int sprintf (char*,char*,int,int,int,int,int,int) ;

__attribute__((used)) static char *bda2str(esp_bd_addr_t bda, char *str, size_t size)
{
    if (bda == ((void*)0) || str == ((void*)0) || size < 18) {
        return ((void*)0);
    }

    uint8_t *p = bda;
    sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
            p[0], p[1], p[2], p[3], p[4], p[5]);
    return str;
}
