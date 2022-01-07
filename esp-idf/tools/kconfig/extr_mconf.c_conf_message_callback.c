
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int buf ;


 int PATH_MAX ;
 int printf (char*,char*) ;
 scalar_t__ save_and_exit ;
 int show_textbox (int *,char*,int,int) ;
 int silent ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void conf_message_callback(const char *fmt, va_list ap)
{
 char buf[PATH_MAX+1];

 vsnprintf(buf, sizeof(buf), fmt, ap);
 if (save_and_exit) {
  if (!silent)
   printf("%s", buf);
 } else {
  show_textbox(((void*)0), buf, 6, 60);
 }
}
