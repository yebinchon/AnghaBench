
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbtt_uint8 ;
typedef int const stbtt_int16 ;



__attribute__((used)) static stbtt_int16 ttSHORT(const stbtt_uint8 *p) { return p[0]*256 + p[1]; }
