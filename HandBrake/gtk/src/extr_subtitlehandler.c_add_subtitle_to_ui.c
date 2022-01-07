
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef int GhbValue ;


 int add_to_subtitle_list_ui (int *,int *) ;
 int ghb_live_reset (int *) ;

__attribute__((used)) static void
add_subtitle_to_ui(signal_user_data_t *ud, GhbValue *subsettings)
{
    if (subsettings == ((void*)0))
        return;


    add_to_subtitle_list_ui(ud, subsettings);
    ghb_live_reset(ud);
}
