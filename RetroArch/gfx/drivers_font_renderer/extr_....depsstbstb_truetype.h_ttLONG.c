
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbtt_uint8 ;
typedef int const stbtt_int32 ;



__attribute__((used)) static stbtt_int32 ttLONG(const stbtt_uint8 *p) { return (p[0]<<24) + (p[1]<<16) + (p[2]<<8) + p[3]; }
