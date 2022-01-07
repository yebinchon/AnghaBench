
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int Buffer ;


 int write16 (int *,int) ;

__attribute__((used)) static void write32(Buffer *b, uint32_t x) {
    write16(b, x & 0xFFFF);
    write16(b, x >> 16);
}
