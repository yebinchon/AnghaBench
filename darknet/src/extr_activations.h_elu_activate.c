
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exp (float) ;

__attribute__((used)) static inline float elu_activate(float x){return (x >= 0)*x + (x < 0)*(exp(x)-1);}
