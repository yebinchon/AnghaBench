
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int idct_column_false_mmi (int *,int,int *) ;
 int idct_column_true_mmi (int *,int,int *) ;
 int idct_row_mmi (int *) ;

__attribute__((used)) static void idct_mmi(uint8_t *dst, int stride, int16_t *input, int type)
{
    idct_row_mmi(input);
    if (type == 1)
        idct_column_true_mmi(dst, stride, input);
    else
        idct_column_false_mmi(dst, stride, input);
}
