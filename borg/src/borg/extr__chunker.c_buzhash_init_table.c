
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* malloc (int) ;
 int* table_base ;

__attribute__((used)) static uint32_t *
buzhash_init_table(uint32_t seed)
{
    int i;
    uint32_t *table = malloc(1024);
    for(i = 0; i < 256; i++)
    {
        table[i] = table_base[i] ^ seed;
    }
    return table;
}
