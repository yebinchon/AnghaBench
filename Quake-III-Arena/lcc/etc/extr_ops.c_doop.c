
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B ;
 int LOAD ;
 int V ;
 char const* list ;
 int printf (char*,...) ;
 scalar_t__ sizeop (int) ;
 int* sizes ;
 char* strchr (char const*,char const) ;

__attribute__((used)) static int doop(int op, int type, const char *sz, const char *opname) {
 int count = 0;
 static int last;

 if (op == LOAD)
  return 0;
 if (last != 0 && last != op)
  printf("\n");
 last = op;
 if (type == B || type == V) {
  printf(" %s=%d", opname, op + type);
  count++;
 } else {
  int i, done = 0;
  const char *s;
  for (i = 0; sz[i] != '\0' && (s = strchr(list, sz[i])) != ((void*)0); i++) {
   int n = sizes[s-list];
   if ((done&(1<<n)) == 0) {
    printf(" %s%d=%d", opname, n, op + type + sizeop(n));
    count++;
   }
   done |= 1<<n;
  }
 }
 printf("\n");
 return count;
}
