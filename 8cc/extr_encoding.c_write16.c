
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int Buffer ;


 int buf_write (int *,int) ;

__attribute__((used)) static void write16(Buffer *b, uint16_t x) {
    buf_write(b, x & 0xFF);
    buf_write(b, x >> 8);
}
