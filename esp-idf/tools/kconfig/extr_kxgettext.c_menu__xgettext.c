
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {struct message* next; int msg; } ;


 struct message* message__list ;
 int message__print_gettext_msgid_msgstr (struct message*) ;
 int strlen (int ) ;

__attribute__((used)) static void menu__xgettext(void)
{
 struct message *m = message__list;

 while (m != ((void*)0)) {

  if (strlen(m->msg) > sizeof("\"\""))
   message__print_gettext_msgid_msgstr(m);
  m = m->next;
 }
}
