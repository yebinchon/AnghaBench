
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* COM_ParseExt (char**,int ) ;
 int qtrue ;

char *COM_Parse( char **data_p )
{
 return COM_ParseExt( data_p, qtrue );
}
