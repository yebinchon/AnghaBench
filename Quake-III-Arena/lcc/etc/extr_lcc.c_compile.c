
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int append (char*,int ) ;
 int av ;
 int callsys (int ) ;
 int clist ;
 int com ;
 int compose (int ,int ,int ,int ) ;

__attribute__((used)) static int compile(char *src, char *dst) {
 compose(com, clist, append(src, 0), append(dst, 0));
 return callsys(av);
}
