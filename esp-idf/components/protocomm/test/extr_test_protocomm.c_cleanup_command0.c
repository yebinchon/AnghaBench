
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* sc0; } ;
struct TYPE_4__ {TYPE_2__* sec1; } ;
typedef TYPE_1__ SessionData ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void cleanup_command0(SessionData *req)
{
    free(req->sec1->sc0);
    free(req->sec1);
}
