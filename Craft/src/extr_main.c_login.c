
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_login (char*,char*) ;
 scalar_t__ db_auth_get_selected (char*,int,char*,int) ;
 scalar_t__ get_access_token (char*,int,char*,char*) ;
 int printf (char*,...) ;

void login() {
    char username[128] = {0};
    char identity_token[128] = {0};
    char access_token[128] = {0};
    if (db_auth_get_selected(username, 128, identity_token, 128)) {
        printf("Contacting login server for username: %s\n", username);
        if (get_access_token(
            access_token, 128, username, identity_token))
        {
            printf("Successfully authenticated with the login server\n");
            client_login(username, access_token);
        }
        else {
            printf("Failed to authenticate with the login server\n");
            client_login("", "");
        }
    }
    else {
        printf("Logging in anonymously\n");
        client_login("", "");
    }
}
