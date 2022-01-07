
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Data; } ;
typedef TYPE_1__ HTTP_VALUE ;
typedef int HTTP_HEADER ;


 TYPE_1__* GetHttpValue (int *,char*) ;
 int ToInt (int ) ;

UINT GetContentLength(HTTP_HEADER *header)
{
 UINT ret;
 HTTP_VALUE *v;

 if (header == ((void*)0))
 {
  return 0;
 }

 v = GetHttpValue(header, "Content-Length");
 if (v == ((void*)0))
 {
  return 0;
 }

 ret = ToInt(v->Data);

 return ret;
}
