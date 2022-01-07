
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int printf (char*,...) ;

__attribute__((used)) static void print_md5(uint8_t *md5)
{
    int i;
    for (i = 0; i < 16; i++)
        printf("%02x", md5[i]);
    printf("\n");
}
