
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exp (int) ;

__attribute__((used)) static inline float tanh_activate(float x){return (exp(2*x)-1)/(exp(2*x)+1);}
