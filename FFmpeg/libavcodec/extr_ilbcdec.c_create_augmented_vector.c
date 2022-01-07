
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int16_t ;


 int FFMIN (int,int) ;
 int SUBL ;
 int add_vector_and_shift (size_t*,size_t*,size_t*,int,int ) ;
 int * alpha ;
 int memcpy (size_t*,size_t*,int) ;
 int vector_multiplication (size_t*,size_t*,int *,int,int) ;
 int vector_rmultiplication (size_t*,size_t*,int *,int,int) ;

__attribute__((used)) static void create_augmented_vector(int index, int16_t *buffer, int16_t *cbVec)
{
    int16_t cbVecTmp[4];
    int interpolation_length = FFMIN(4, index);
    int16_t ilow = index - interpolation_length;

    memcpy(cbVec, buffer - index, index * 2);

    vector_multiplication(&cbVec[ilow], buffer - index - interpolation_length, alpha, interpolation_length, 15);
    vector_rmultiplication(cbVecTmp, buffer - interpolation_length, &alpha[interpolation_length - 1], interpolation_length, 15);
    add_vector_and_shift(&cbVec[ilow], &cbVec[ilow], cbVecTmp, interpolation_length, 0);

    memcpy(cbVec + index, buffer - index, FFMIN(SUBL - index, index) * sizeof(*cbVec));
}
