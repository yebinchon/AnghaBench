
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SStringBuilder ;


 int strlen (char const*) ;
 int taosStringBuilderAppendStringLen (int *,char const*,int ) ;

void taosStringBuilderAppendString(SStringBuilder* sb, const char* str) {
  taosStringBuilderAppendStringLen(sb, str, strlen(str));
}
