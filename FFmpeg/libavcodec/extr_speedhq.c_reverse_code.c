
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int reverse (int const,int const) ;

__attribute__((used)) static void reverse_code(const uint16_t *code, const uint8_t *bits,
                         uint16_t *reversed_code, int num_entries)
{
    int i;
    for (i = 0; i < num_entries; i++) {
        reversed_code[i] = reverse(code[i], bits[i]);
    }
}
