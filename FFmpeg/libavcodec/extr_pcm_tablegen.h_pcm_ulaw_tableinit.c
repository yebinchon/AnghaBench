
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int build_xlaw_table (int ,int ,int) ;
 int linear_to_ulaw ;
 int ulaw2linear ;

__attribute__((used)) static void pcm_ulaw_tableinit(void)
{
    build_xlaw_table(linear_to_ulaw, ulaw2linear, 0xff);
}
