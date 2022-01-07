
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* atorp ;
 int* atorstack ;
 int cant (char*) ;
 int subidp ;

__attribute__((used)) static int
popator(void)
{
 if(atorp <= &atorstack[0])
  cant("operator stack underflow");
 --subidp;
 return *--atorp;
}
