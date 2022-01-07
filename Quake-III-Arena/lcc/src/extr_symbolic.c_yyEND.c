
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ html ;
 scalar_t__ isupper (char const) ;
 int print (char*,...) ;

__attribute__((used)) static void yyEND(const char *tag) {
 if (html)
  print("</%s>", tag);
 if (isupper(*tag))
  print("\n");
}
