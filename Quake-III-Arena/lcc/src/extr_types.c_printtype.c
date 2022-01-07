
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int fprint (int ,char*) ;
 int prtype (int ,int ,int ,unsigned int) ;
 int stderr ;
 int stdout ;

void printtype(Type ty, int fd) {
 static unsigned mark;
 prtype(ty, fd == 1 ? stdout : stderr, 0, ++mark);
 fprint(fd == 1 ? stdout : stderr, "\n");
}
