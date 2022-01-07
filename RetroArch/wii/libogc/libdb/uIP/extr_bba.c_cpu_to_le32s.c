
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void cpu_to_le32s(u32 *a) {*a = cpu_to_le32(*a);}
