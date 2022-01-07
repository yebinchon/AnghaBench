
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ rnum; int origin; } ;
typedef TYPE_2__ ccv_cache_t ;
struct TYPE_6__ {int off; scalar_t__ sign; int type; } ;
struct TYPE_8__ {TYPE_1__ terminal; } ;
typedef TYPE_3__ ccv_cache_index_t ;


 int CCV_GET_CACHE_TYPE (int ) ;
 TYPE_3__* _ccv_cache_seek (int *,scalar_t__,int ) ;

void* ccv_cache_get(ccv_cache_t* cache, uint64_t sign, uint8_t* type)
{
 if (cache->rnum == 0)
  return 0;
 ccv_cache_index_t* branch = _ccv_cache_seek(&cache->origin, sign, 0);
 if (!branch)
  return 0;
 int leaf = branch->terminal.off & 0x1;
 if (!leaf)
  return 0;
 if (branch->terminal.sign != sign)
  return 0;
 if (type)
  *type = CCV_GET_CACHE_TYPE(branch->terminal.type);
 return (void*)(branch->terminal.off - (branch->terminal.off & 0x3));
}
