
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline__ short wenc_clip_short(int a)
{
 if((a+32768)&~65535) return (a>>31)^32767;
 else return a;
}
