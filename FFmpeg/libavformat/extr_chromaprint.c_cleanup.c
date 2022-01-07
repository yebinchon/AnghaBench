
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ctx; } ;
typedef TYPE_1__ ChromaprintMuxContext ;


 int chromaprint_free (scalar_t__) ;
 int ff_lock_avformat () ;
 int ff_unlock_avformat () ;

__attribute__((used)) static void cleanup(ChromaprintMuxContext *cpr)
{
    if (cpr->ctx) {
        ff_lock_avformat();
        chromaprint_free(cpr->ctx);
        ff_unlock_avformat();
    }
}
