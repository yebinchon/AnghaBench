
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float AngleNormalize360 ( float angle ) {
 return (360.0 / 65536) * ((int)(angle * (65536 / 360.0)) & 65535);
}
