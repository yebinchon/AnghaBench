
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double getpix (void*,double,double,int ) ;

__attribute__((used)) static double lum(void *priv, double x, double y) { return getpix(priv, x, y, 0); }
