
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nodeName; } ;
typedef TYPE_1__ ShardPlacement ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ pstrdup (scalar_t__) ;

void
CopyShardPlacement(ShardPlacement *srcPlacement, ShardPlacement *destPlacement)
{

 memcpy(destPlacement, srcPlacement, sizeof(ShardPlacement));


 if (srcPlacement->nodeName)
 {
  destPlacement->nodeName = pstrdup(srcPlacement->nodeName);
 }
}
