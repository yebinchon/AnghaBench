
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_exit (char*,char) ;

int check_atoi(char* str, int *result)
{
 int accum = 0;
 char* p = str;
 while(*p >= '0' && *p <= '9')
 {
  accum *= 10;
  accum += *p++ - '0';
 }
 if(*p != ' ' && *p != 0)
  error_exit("Malformed integer value (%c)", *p);
 *result = accum;
 return p - str;
}
