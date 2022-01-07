
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {struct message* next; int msg; } ;


 struct message* message__list ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct message *mesage__find(const char *msg)
{
 struct message *m = message__list;

 while (m != ((void*)0)) {
  if (strcmp(m->msg, msg) == 0)
   break;
  m = m->next;
 }

 return m;
}
