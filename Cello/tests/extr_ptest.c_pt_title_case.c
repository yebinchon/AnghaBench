
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static void pt_title_case(char* output, const char* input) {

  int space = 1;
  unsigned int i;

  strcpy(output, input);

  for(i = 0; i < strlen(output); i++) {

    if (output[i] == '_' || output[i] == ' ') {
      space = 1;
      output[i] = ' ';
      continue;
    }

    if (space && output[i] >= 'a' && output[i] <= 'z') {
      space = 0;
      output[i] = output[i] - 32;
      continue;
    }

    space = 0;

  }

}
