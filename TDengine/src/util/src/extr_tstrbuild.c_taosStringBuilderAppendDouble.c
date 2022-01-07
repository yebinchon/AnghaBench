
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SStringBuilder ;


 size_t sprintf (char*,char*,double) ;
 int taosStringBuilderAppendStringLen (int *,char*,size_t) ;

void taosStringBuilderAppendDouble(SStringBuilder* sb, double v) {
  char buf[64];
  size_t len = sprintf(buf, "%.9lf", v);
  taosStringBuilderAppendStringLen(sb, buf, len);
}
