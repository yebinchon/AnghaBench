
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lconv {int dummy; } ;


 int _locale ;

struct lconv* localeconv( void ) {
    return ( struct lconv* ) &_locale;
}
