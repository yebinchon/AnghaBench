
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int buf ;


 int btn_dialog (int ,char*,int,char*) ;
 int main_window ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void conf_message_callback(const char *fmt, va_list ap)
{
 char buf[1024];

 vsnprintf(buf, sizeof(buf), fmt, ap);
 btn_dialog(main_window, buf, 1, "<OK>");
}
