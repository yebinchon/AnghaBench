
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef int boolean_t ;


 int pa_valid (int ) ;
 int ptoa (int ) ;

boolean_t
pmap_valid_page(
 ppnum_t pn) {
 return pa_valid(ptoa(pn));
}
