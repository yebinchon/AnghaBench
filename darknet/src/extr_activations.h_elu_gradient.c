
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float elu_gradient(float x){return (x >= 0) + (x < 0)*(x + 1);}
