
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_EXTENDED ;
 int regex_match (char*,char*,int ) ;

__attribute__((used)) static int isCommentLine(char *line) {
  if (line == ((void*)0)) return 1;

  return regex_match(line, "^\\s*#.*", REG_EXTENDED);
}
