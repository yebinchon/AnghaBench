
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pc; } ;
typedef TYPE_1__ m68k_info ;


 unsigned int m68k_read_safe_32 (TYPE_1__ const*,int ) ;

__attribute__((used)) static unsigned int peek_imm_32(const m68k_info *info) { return m68k_read_safe_32((info), (info)->pc); }
