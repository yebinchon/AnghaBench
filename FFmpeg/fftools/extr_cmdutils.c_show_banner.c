
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OptionDef ;


 int AV_LOG_INFO ;
 int INDENT ;
 int SHOW_CONFIG ;
 int SHOW_COPYRIGHT ;
 int SHOW_VERSION ;
 scalar_t__ hide_banner ;
 int locate_option (int,char**,int const*,char*) ;
 int print_all_libs_info (int,int ) ;
 int print_program_info (int,int ) ;

void show_banner(int argc, char **argv, const OptionDef *options)
{
    int idx = locate_option(argc, argv, options, "version");
    if (hide_banner || idx)
        return;

    print_program_info (INDENT|SHOW_COPYRIGHT, AV_LOG_INFO);
    print_all_libs_info(INDENT|SHOW_CONFIG, AV_LOG_INFO);
    print_all_libs_info(INDENT|SHOW_VERSION, AV_LOG_INFO);
}
