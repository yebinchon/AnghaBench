
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* str; struct TYPE_5__* link; } ;
typedef TYPE_1__* List ;


 int ac ;
 char* alloc (scalar_t__) ;
 int assert (int) ;
 char** av ;
 scalar_t__ isdigit (char) ;
 int strcat (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void compose(char *cmd[], List a, List b, List c) {
 int i, j;
 List lists[3];

 lists[0] = a;
 lists[1] = b;
 lists[2] = c;
 for (i = j = 0; cmd[i]; i++) {
  char *s = strchr(cmd[i], '$');
  if (s && isdigit(s[1])) {
   int k = s[1] - '0';
   assert(k >=1 && k <= 3);
   if (b = lists[k-1]) {
    b = b->link;
    av[j] = alloc(strlen(cmd[i]) + strlen(b->str) - 1);
    strncpy(av[j], cmd[i], s - cmd[i]);
    av[j][s-cmd[i]] = '\0';
    strcat(av[j], b->str);
    strcat(av[j++], s + 2);
    while (b != lists[k-1]) {
     b = b->link;
     assert(j < ac);
     av[j++] = b->str;
    };
   }
  } else if (*cmd[i]) {
   assert(j < ac);
   av[j++] = cmd[i];
  }
 }
 av[j] = ((void*)0);
}
