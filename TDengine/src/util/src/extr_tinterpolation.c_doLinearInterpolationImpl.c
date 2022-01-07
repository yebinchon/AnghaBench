
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double doLinearInterpolationImpl(double v1, double v2, double k1, double k2, double k) {
  return v1 + (v2 - v1) * (k - k1) / (k2 - k1);
}
