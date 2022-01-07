
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Jpeg2000EncoderContext ;


 int put_num (int *,int,int) ;

__attribute__((used)) static void putnumpasses(Jpeg2000EncoderContext *s, int n)
{
    if (n == 1)
        put_num(s, 0, 1);
    else if (n == 2)
        put_num(s, 2, 2);
    else if (n <= 5)
        put_num(s, 0xc | (n-3), 4);
    else if (n <= 36)
        put_num(s, 0x1e0 | (n-6), 9);
    else
        put_num(s, 0xff80 | (n-37), 16);
}
