
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nalloc; char* body; int len; } ;
typedef TYPE_1__ Buffer ;


 char* malloc (int) ;
 int memcpy (char*,char*,int ) ;

__attribute__((used)) static void realloc_body(Buffer *b) {
    int newsize = b->nalloc * 2;
    char *body = malloc(newsize);
    memcpy(body, b->body, b->len);
    b->body = body;
    b->nalloc = newsize;
}
