
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int reply; int querybuf; } ;


 int listRelease (int ) ;
 int sdsfree (int ) ;
 int zfree (struct client*) ;

void freeFakeClient(struct client *c) {
    sdsfree(c->querybuf);
    listRelease(c->reply);
    zfree(c);
}
