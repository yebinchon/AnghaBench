
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float AngleMod(float a) {
 a = (360.0/65536) * ((int)(a*(65536/360.0)) & 65535);
 return a;
}
