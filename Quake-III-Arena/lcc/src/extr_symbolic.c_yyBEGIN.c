
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ html ;
 int print (char*,char const*) ;

__attribute__((used)) static const char *yyBEGIN(const char *tag) {
 if (html)
  print("<%s>", tag);
 return tag;
}
