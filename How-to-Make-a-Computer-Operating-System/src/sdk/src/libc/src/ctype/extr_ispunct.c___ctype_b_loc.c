
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (int) ;
 scalar_t__ isprint (int) ;
 int isspace (int) ;

int ispunct( int c ) {
    return ( isprint( c ) &&
             !isalnum( c ) &&
             !isspace( c ) );
}
