
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; } ;


 int Q_strcat (int ,int,char*) ;
 TYPE_1__* completionField ;
 int keyConcatArgs () ;
 int strlen (char const*) ;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static void ConcatRemaining( const char *src, const char *start ) {
 char *str;

 str = strstr(src, start);
 if (!str) {
  keyConcatArgs();
  return;
 }

 str += strlen(start);
 Q_strcat( completionField->buffer, sizeof( completionField->buffer ), str);
}
