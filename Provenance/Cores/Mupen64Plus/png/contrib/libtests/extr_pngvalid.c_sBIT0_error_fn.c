
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_structp ;
typedef int png_infop ;
struct TYPE_3__ {scalar_t__ alpha; scalar_t__ gray; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
typedef TYPE_1__ png_color_8 ;


 int png_set_sBIT (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
sBIT0_error_fn(png_structp pp, png_infop pi)
{

   png_color_8 bad;
   bad.red = bad.green = bad.blue = bad.gray = bad.alpha = 0;
   png_set_sBIT(pp, pi, &bad);
}
