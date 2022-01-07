
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int safe_gets (char*,int,char*) ;

__attribute__((used)) static int pager(void)
{
 char buf[100];
 safe_gets(buf, sizeof(buf), "Press Return to continue ('q' to quit): ");
 return buf[0] == 'q' || buf[0] == 'Q';
}
