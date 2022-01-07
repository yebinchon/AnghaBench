
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* data; } ;
struct TYPE_7__ {struct TYPE_7__* sc1; TYPE_1__ client_verify_data; } ;
struct TYPE_6__ {TYPE_3__* sec1; } ;
typedef TYPE_2__ SessionData ;


 int free (TYPE_3__*) ;

__attribute__((used)) static void cleanup_command1(SessionData *req)
{
    free(req->sec1->sc1->client_verify_data.data);
    free(req->sec1->sc1);
    free(req->sec1);
}
