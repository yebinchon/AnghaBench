
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int system (char*) ;

__attribute__((used)) static void myexit(int code)
{



  exit(code);
}
