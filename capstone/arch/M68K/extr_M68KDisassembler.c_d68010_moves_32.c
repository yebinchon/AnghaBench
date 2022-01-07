
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int LIMIT_CPU_TYPES (int *,int ) ;
 int M68010_PLUS ;
 int build_moves (int *,int) ;

__attribute__((used)) static void d68010_moves_32(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68010_PLUS);
 build_moves(info, 4);
}
