
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_enabled ;
 int client_send (char*) ;
 int snprintf (char*,int,char*,char const*,char const*) ;

void client_login(const char *username, const char *identity_token) {
    if (!client_enabled) {
        return;
    }
    char buffer[1024];
    snprintf(buffer, 1024, "A,%s,%s\n", username, identity_token);
    client_send(buffer);
}
