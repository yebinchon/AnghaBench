
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_cc; } ;


 int bcopy (int ,int ,int) ;
 int ttydefchars ;

void
termioschars(struct termios *t)
{
 bcopy(ttydefchars, t->c_cc, sizeof t->c_cc);
}
