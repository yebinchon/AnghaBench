
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int U ;
 double lum (void*,double,double,int ) ;

__attribute__((used)) static double weight_U(void *priv, double x, double y) { return lum(priv, x, y, U); }
