
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int size; char* data; int header; } ;
typedef TYPE_1__ WU_WEBPAGE ;


 int AddHttpValue (int ,int ) ;
 int CalcUniToUtf8 (int *) ;
 char* HTTP_CONTENT_TYPE4 ;
 char* HTTP_KEEP_ALIVE ;
 scalar_t__ Malloc (int) ;
 int NewHttpHeader (char*,char*,char*) ;
 int NewHttpValue (char*,char*) ;
 int UniToUtf8 (char*,int,int *) ;

__attribute__((used)) static WU_WEBPAGE *WuNewUniWebPage(wchar_t *content)
{
 WU_WEBPAGE *ret;

 if(content == ((void*)0))
 {
  return ((void*)0);
 }

 ret = (WU_WEBPAGE*)Malloc(sizeof(WU_WEBPAGE));
 ret->size = CalcUniToUtf8(content);
 ret->data = (char*)Malloc(ret->size);
 UniToUtf8(ret->data, ret->size, content);

 ret->header = NewHttpHeader("HTTP/1.1", "202", "OK");
 AddHttpValue(ret->header, NewHttpValue("Content-Type", HTTP_CONTENT_TYPE4));
 AddHttpValue(ret->header, NewHttpValue("Connection", "Keep-Alive"));
 AddHttpValue(ret->header, NewHttpValue("Keep-Alive", HTTP_KEEP_ALIVE));

 return ret;
}
