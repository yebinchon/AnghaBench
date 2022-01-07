
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uch ;


 int png_sig_cmp (int *,int ,int) ;

int readpng2_check_sig(uch *sig, int num)
{
    return !png_sig_cmp(sig, 0, num);
}
