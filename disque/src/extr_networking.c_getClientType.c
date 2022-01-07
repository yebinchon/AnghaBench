
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int client ;


 int CLIENT_TYPE_NORMAL ;
 int UNUSED (int *) ;

int getClientType(client *c) {
    UNUSED(c);
    return CLIENT_TYPE_NORMAL;
}
