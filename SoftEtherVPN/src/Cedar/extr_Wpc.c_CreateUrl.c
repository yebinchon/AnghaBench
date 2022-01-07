
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Secure; int Target; int HeaderHostName; } ;
typedef TYPE_1__ URL_DATA ;
typedef int UINT ;


 int Format (char*,int ,char*,char*,int ,int ) ;

void CreateUrl(char *url, UINT url_size, URL_DATA *data)
{
 char *protocol;

 if (url == ((void*)0) || data == ((void*)0))
 {
  return;
 }

 if (data->Secure == 0)
 {
  protocol = "http://";
 }
 else
 {
  protocol = "https://";
 }

 Format(url, url_size, "%s%s%s", protocol, data->HeaderHostName, data->Target);
}
