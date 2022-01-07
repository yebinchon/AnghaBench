
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_structp ;


 int PNG_ALL_FILTERS ;
 int PNG_FILTER_UP ;
 int png_set_filter (int ,int ,int) ;
 int random_mod (unsigned int) ;

__attribute__((used)) static void
choose_random_filter(png_structp pp, int start)
{



   int filters = PNG_ALL_FILTERS & random_mod(256U);


   if (filters != 0)
   {
      if (start && filters < PNG_FILTER_UP)
         filters |= PNG_FILTER_UP;

      png_set_filter(pp, 0 , filters);
   }
}
