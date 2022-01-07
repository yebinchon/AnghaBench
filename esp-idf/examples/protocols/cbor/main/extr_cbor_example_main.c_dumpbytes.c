
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int printf (char*,int ) ;

__attribute__((used)) static void dumpbytes(const uint8_t *buf, size_t len)
{
    while (len--) {
        printf("%02X ", *buf++);
    }
}
