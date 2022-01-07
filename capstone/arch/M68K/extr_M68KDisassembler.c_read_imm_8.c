
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pc; } ;
typedef TYPE_1__ m68k_info ;


 unsigned int peek_imm_8 (TYPE_1__*) ;

__attribute__((used)) static unsigned int read_imm_8(m68k_info *info) { const unsigned int value = peek_imm_8(info); (info)->pc+=2; return value; }
