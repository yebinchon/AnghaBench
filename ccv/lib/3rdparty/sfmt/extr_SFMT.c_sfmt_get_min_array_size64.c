
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfmt_t ;


 int SFMT_N64 ;
 int UNUSED_VARIABLE (int *) ;

int sfmt_get_min_array_size64(sfmt_t * sfmt) {
    UNUSED_VARIABLE(sfmt);
    return SFMT_N64;
}
