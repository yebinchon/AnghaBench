
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int t ;


 int Nb ;
 int Nk ;
 int _copy (int *,int,int *,int) ;
 int mult_row_column (int *,int *) ;

__attribute__((used)) static inline void mix_columns(uint8_t *s)
{
    uint8_t t[Nb * Nk];

    mult_row_column(t, s);
    mult_row_column(&t[Nb], s + Nb);
    mult_row_column(&t[2 * Nb], s + (2 * Nb));
    mult_row_column(&t[3 * Nb], s + (3 * Nb));
    (void) _copy(s, sizeof(t), t, sizeof(t));
}
