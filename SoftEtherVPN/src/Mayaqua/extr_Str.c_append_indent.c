
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPEND_STRING (char*) ;

__attribute__((used)) static int append_indent(char *buf, int level) {
 int i;
 int written = -1, written_total = 0;
 for (i = 0; i < level; i++) {
  APPEND_STRING("    ");
 }
 return written_total;
}
