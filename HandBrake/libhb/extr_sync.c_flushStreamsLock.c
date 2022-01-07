
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ sync_common_t ;


 int flushStreams (TYPE_1__*) ;
 int hb_lock (int ) ;
 int hb_unlock (int ) ;

__attribute__((used)) static void flushStreamsLock( sync_common_t * common )
{
    hb_lock(common->mutex);
    flushStreams(common);
    hb_unlock(common->mutex);
}
