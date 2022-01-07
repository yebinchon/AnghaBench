
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int RangeCoder ;


 int put_symbol (int *,int *,int,int,int *,int *) ;

__attribute__((used)) static inline int intlist_write(RangeCoder *c, uint8_t *state, int *buf, int entries, int base_2_part)
{
    int i;

    for (i = 0; i < entries; i++)
        put_symbol(c, state, buf[i], 1, ((void*)0), ((void*)0));

    return 1;
}
