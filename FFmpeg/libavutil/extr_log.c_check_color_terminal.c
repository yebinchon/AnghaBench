
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wAttributes; } ;
typedef TYPE_1__ CONSOLE_SCREEN_BUFFER_INFO ;


 int GetConsoleScreenBufferInfo (scalar_t__,TYPE_1__*) ;
 scalar_t__ GetStdHandle (int ) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int STD_ERROR_HANDLE ;
 int attr_orig ;
 int background ;
 scalar_t__ con ;
 char* getenv (char*) ;
 scalar_t__ isatty (int) ;
 scalar_t__ strstr (char*,char*) ;
 int use_color ;

__attribute__((used)) static void check_color_terminal(void)
{
    use_color = getenv("AV_LOG_FORCE_COLOR") && !getenv("NO_COLOR") &&
               !getenv("AV_LOG_FORCE_NOCOLOR");

}
