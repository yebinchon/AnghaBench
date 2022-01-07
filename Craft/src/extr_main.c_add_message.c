
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t message_index; int * messages; } ;


 int MAX_MESSAGES ;
 int MAX_TEXT_LENGTH ;
 TYPE_1__* g ;
 int printf (char*,char const*) ;
 int snprintf (int ,int ,char*,char const*) ;

void add_message(const char *text) {
    printf("%s\n", text);
    snprintf(
        g->messages[g->message_index], MAX_TEXT_LENGTH, "%s", text);
    g->message_index = (g->message_index + 1) % MAX_MESSAGES;
}
