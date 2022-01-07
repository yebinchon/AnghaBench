
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint16_t ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void quant_matrix_rebuild(uint16_t *matrix, const uint8_t *old_perm,
                                 const uint8_t *new_perm)
{
    uint16_t temp_matrix[64];
    int i;

    memcpy(temp_matrix, matrix, 64 * sizeof(uint16_t));

    for (i = 0; i < 64; i++)
        matrix[new_perm[i]] = temp_matrix[old_perm[i]];
}
