
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; int found_first_pts; } ;
typedef TYPE_1__ sync_common_t ;


 int OutputBuffer (TYPE_1__*) ;
 int checkFirstPts (TYPE_1__*) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

__attribute__((used)) static void FlushBuffer( sync_common_t * common )
{
    hb_lock(common->mutex);

    if (!common->found_first_pts)
    {
        checkFirstPts(common);
    }
    OutputBuffer(common);

    hb_unlock(common->mutex);
}
