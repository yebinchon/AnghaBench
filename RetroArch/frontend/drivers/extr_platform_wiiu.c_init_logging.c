
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PC_DEVELOPMENT_TCP_PORT ;
 size_t STD_ERR ;
 size_t STD_OUT ;
 int ** devoptab_list ;
 int dotab_stdout ;
 int wiiu_log_init (int ) ;

__attribute__((used)) static void init_logging(void)
{
   wiiu_log_init(PC_DEVELOPMENT_TCP_PORT);
   devoptab_list[STD_OUT] = &dotab_stdout;
   devoptab_list[STD_ERR] = &dotab_stdout;
}
