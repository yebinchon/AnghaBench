
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCSANOW ;
 int oldtty ;
 scalar_t__ restore_tty ;
 int tcsetattr (int ,int ,int *) ;

__attribute__((used)) static void term_exit_sigsafe(void)
{




}
