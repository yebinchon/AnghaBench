
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline__ int wenc_clip(int a,int amin,int amax)
{
 if(a<amin) return amin;
 else if(a>amax) return amax;
 else return a;
}
