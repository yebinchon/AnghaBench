
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_good_char(char c)
{
 return c >= ' ' && c < 0x7f;
}
