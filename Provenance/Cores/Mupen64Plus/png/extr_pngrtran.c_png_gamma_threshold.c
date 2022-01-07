
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_fixed_point ;


 int PNG_FP_1 ;
 scalar_t__ png_gamma_significant (int ) ;
 int png_muldiv (int *,int ,int ,int ) ;

__attribute__((used)) static int
png_gamma_threshold(png_fixed_point screen_gamma, png_fixed_point file_gamma)
{







   png_fixed_point gtest;
   return !png_muldiv(&gtest, screen_gamma, file_gamma, PNG_FP_1) ||
       png_gamma_significant(gtest);
}
