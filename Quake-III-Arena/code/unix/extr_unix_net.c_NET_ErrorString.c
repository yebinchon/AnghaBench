
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char* strerror (int) ;

char *NET_ErrorString (void)
{
 int code;

 code = errno;
 return strerror (code);
}
