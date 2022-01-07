
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int hex2bcd(int h)
{
 return ((h / 10) << 4) | (h % 10);
}
