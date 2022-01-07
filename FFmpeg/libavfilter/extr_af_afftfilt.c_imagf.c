
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double getimag (void*,double,double) ;

__attribute__((used)) static double imagf(void *priv, double x, double ch) { return getimag(priv, x, ch); }
