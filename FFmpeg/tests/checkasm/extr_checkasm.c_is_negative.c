
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union av_intfloat32 {int i; } ;



__attribute__((used)) static int is_negative(union av_intfloat32 u)
{
    return u.i >> 31;
}
