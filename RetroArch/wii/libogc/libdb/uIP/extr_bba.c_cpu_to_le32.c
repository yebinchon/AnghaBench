
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 cpu_to_le32(u32 x) { return((x>>24) | ((x>>8)&0xff00) | ((x<<8)&0xff0000) | (x<<24));}
