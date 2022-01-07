
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;
typedef int FLOAT ;


 int emms_c () ;
 int p8idct (int*,int*,int *,int ,int,int,int) ;
 int* prescale ;

void ff_faanidct(int16_t block[64]){
    FLOAT temp[64];
    int i;

    emms_c();

    for(i=0; i<64; i++)
        temp[i] = block[i] * prescale[i];

    p8idct(block, temp, ((void*)0), 0, 1, 8, 0);
    p8idct(block, temp, ((void*)0), 0, 8, 1, 1);
}
