
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int WEBUI ;
typedef int LIST ;


 int WP_LOGIN ;
 int * WuRedirectPage (int ) ;

__attribute__((used)) static wchar_t *WpDefault(WEBUI *wu, LIST *params)
{
 return WuRedirectPage(WP_LOGIN);
}
