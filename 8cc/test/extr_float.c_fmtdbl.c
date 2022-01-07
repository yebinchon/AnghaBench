
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fmt (char*,double) ;

char *fmtdbl(double x) { return fmt("%a", x); }
