
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*) ;

int gethostname( char* name, size_t len ) {


    snprintf( name, len, "localhost" );

    return 0;
}
