
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SecureMode; } ;
typedef TYPE_1__ SOCK ;
typedef int HTTP_HEADER ;


 int Free (char*) ;
 char* HttpHeaderToStr (int *) ;
 int SendAll (TYPE_1__*,char*,int ,int ) ;
 int StrLen (char*) ;

bool SendHttpHeader(SOCK *s, HTTP_HEADER *header)
{
 char *str;
 bool ret;

 if (s == ((void*)0) || header == ((void*)0))
 {
  return 0;
 }


 str = HttpHeaderToStr(header);


 ret = SendAll(s, str, StrLen(str), s->SecureMode);

 Free(str);

 return ret;
}
