
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Parse () ;
 int atoi (int ) ;
 int token ;

int ParseValue( void ) {
 Parse();
 return atoi( token );
}
