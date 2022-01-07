
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfmt_t ;


 char const* SFMT_IDSTR ;
 int UNUSED_VARIABLE (int *) ;

const char *sfmt_get_idstring(sfmt_t * sfmt) {
    UNUSED_VARIABLE(sfmt);
    return SFMT_IDSTR;
}
