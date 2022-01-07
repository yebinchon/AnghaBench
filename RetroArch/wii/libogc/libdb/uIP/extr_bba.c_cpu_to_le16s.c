
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int cpu_to_le16 (int ) ;

__attribute__((used)) static inline void cpu_to_le16s(u16 *a) {*a = cpu_to_le16(*a);}
