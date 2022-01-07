
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {struct TYPE_5__* sr; } ;
struct TYPE_4__ {TYPE_3__* sec0; } ;
typedef TYPE_1__ SessionData ;


 int free (TYPE_3__*) ;

__attribute__((used)) static void sec0_session_setup_cleanup(uint32_t session_id, SessionData *resp)
{
    if (!resp) {
        return;
    }

    free(resp->sec0->sr);
    free(resp->sec0);
    return;
}
