
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int OSAlertW (int *,int *) ;

void AlertW(wchar_t *msg, wchar_t *caption)
{
 OSAlertW(msg, caption);
}
