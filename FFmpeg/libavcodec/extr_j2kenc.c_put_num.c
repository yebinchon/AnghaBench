
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Jpeg2000EncoderContext ;


 int put_bits (int *,int,int) ;

__attribute__((used)) static void put_num(Jpeg2000EncoderContext *s, int num, int n)
{
    while(--n >= 0)
        put_bits(s, (num >> n) & 1, 1);
}
