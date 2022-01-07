
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log (int) ;

__attribute__((used)) static double ssim_db( double ssim, double weight )
{
    return 10*(log(weight)/log(10)-log(weight-ssim)/log(10));
}
