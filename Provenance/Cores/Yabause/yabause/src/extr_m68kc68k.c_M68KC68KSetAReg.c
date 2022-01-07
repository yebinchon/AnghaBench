
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int C68K ;
 int C68k_Set_AReg (int *,int ,int ) ;

__attribute__((used)) static void M68KC68KSetAReg(u32 num, u32 val) {
 C68k_Set_AReg(&C68K, num, val);
}
