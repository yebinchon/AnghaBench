
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xa; } ;
typedef TYPE_1__ xa_t ;


 size_t XAUDIO2_WRITE_AVAILABLE (int ) ;

__attribute__((used)) static size_t xa_write_avail(void *data)
{
   xa_t *xa = (xa_t*)data;
   return XAUDIO2_WRITE_AVAILABLE(xa->xa);
}
