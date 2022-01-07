
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* uuid_t ;



__attribute__((used)) static void
uuid_random_setflags(uuid_t out)
{
 out[6] = (out[6] & 0x0F) | 0x40;
 out[8] = (out[8] & 0x3F) | 0x80;
}
