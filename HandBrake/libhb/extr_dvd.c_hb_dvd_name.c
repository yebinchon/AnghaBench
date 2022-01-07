
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* name ) (char*) ;} ;


 TYPE_1__* dvd_methods ;
 char* stub1 (char*) ;

char * hb_dvd_name( char * path )
{
    return dvd_methods->name(path);
}
