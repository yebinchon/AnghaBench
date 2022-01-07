
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int SStringBuilder ;


 size_t sprintf (char*,char*,int ) ;
 int taosStringBuilderAppendStringLen (int *,char*,size_t) ;

void taosStringBuilderAppendInteger(SStringBuilder* sb, int64_t v) {
  char buf[64];
  size_t len = sprintf(buf, "%lld", v);
  taosStringBuilderAppendStringLen(sb, buf, len);
}
