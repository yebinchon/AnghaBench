
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HTTP_HEADER ;


 int * NewHttpHeaderEx (char*,char*,char*,int) ;

HTTP_HEADER *NewHttpHeader(char *method, char *target, char *version)
{
 return NewHttpHeaderEx(method, target, version, 0);
}
