
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pc; } ;
typedef TYPE_1__ m68k_info ;


 unsigned long long peek_imm_64 (TYPE_1__*) ;

__attribute__((used)) static unsigned long long read_imm_64(m68k_info *info) { const unsigned long long value = peek_imm_64(info); (info)->pc+=8; return value; }
