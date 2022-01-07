
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int k ;

zero(){
   static k;
   int rc;
   k = 2;
   rc = 0;
   return rc;
}
