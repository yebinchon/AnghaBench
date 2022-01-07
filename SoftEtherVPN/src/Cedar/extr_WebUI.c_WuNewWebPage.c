
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; char* data; int header; } ;
typedef TYPE_1__ WU_WEBPAGE ;
typedef int UINT ;


 int AddHttpValue (int ,int ) ;
 int Copy (char*,char*,int) ;
 scalar_t__ EndWith (char*,char*) ;
 char* HTTP_CONTENT_TYPE3 ;
 char* HTTP_CONTENT_TYPE4 ;
 char* HTTP_KEEP_ALIVE ;
 scalar_t__ Malloc (int) ;
 int NewHttpHeader (char*,char*,char*) ;
 int NewHttpValue (char*,char*) ;

__attribute__((used)) static WU_WEBPAGE *WuNewWebPage(char *content, UINT size, char *filename)
{
 WU_WEBPAGE *ret;

 if(content == ((void*)0))
 {
  return ((void*)0);
 }

 ret = (WU_WEBPAGE*)Malloc(sizeof(WU_WEBPAGE));
 ret->size = size;
 ret->data = (char*)Malloc(size);
 Copy(ret->data, content, size);

 ret->header = NewHttpHeader("HTTP/1.1", "202", "OK");
 AddHttpValue(ret->header, NewHttpValue("Connection", "Keep-Alive"));
 AddHttpValue(ret->header, NewHttpValue("Keep-Alive", HTTP_KEEP_ALIVE));

 if(EndWith(filename, "jpg"))
 {
  AddHttpValue(ret->header, NewHttpValue("Content-Type", HTTP_CONTENT_TYPE3));
 }
 AddHttpValue(ret->header, NewHttpValue("Content-Type", HTTP_CONTENT_TYPE4));

 return ret;
}
