
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alaw2linear ;
 int build_xlaw_table (int ,int ,int) ;
 int linear_to_alaw ;

__attribute__((used)) static void pcm_alaw_tableinit(void)
{
    build_xlaw_table(linear_to_alaw, alaw2linear, 0xd5);
}
