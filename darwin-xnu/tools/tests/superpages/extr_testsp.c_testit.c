
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
struct TYPE_2__ {char* description; scalar_t__ (* fn ) () ;} ;


 char* error ;
 int printf (char*,...) ;
 scalar_t__ stub1 () ;
 TYPE_1__* test ;

boolean_t
testit(int i) {
 boolean_t ret;

 error[0] = 0;
 printf ("Test #%d \"%s\"...", i+1, test[i].description);
 ret = test[i].fn();
 if (ret)
  printf ("OK\n");
 else {
  printf ("FAILED!");
  if (error[0])
   printf (" (%s)\n", error);
  else
   printf ("\n");
 }
}
