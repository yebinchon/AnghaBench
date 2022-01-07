
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprint (int ,char*,char*,...) ;
 int * freemask ;
 int stderr ;

__attribute__((used)) static void dumpregs(char *msg, char *a, char *b) {
 fprint(stderr, msg, a, b);
 fprint(stderr, "(free[0]=%x)\n", freemask[0]);
 fprint(stderr, "(free[1]=%x)\n", freemask[1]);
}
