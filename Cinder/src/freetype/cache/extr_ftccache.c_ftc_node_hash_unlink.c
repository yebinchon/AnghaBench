
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int slack; } ;
struct TYPE_8__ {struct TYPE_8__* link; int hash; } ;
typedef TYPE_1__* FTC_Node ;
typedef TYPE_2__* FTC_Cache ;


 TYPE_1__** FTC_NODE_TOP_FOR_HASH (TYPE_2__*,int ) ;
 int FT_TRACE0 (char*) ;
 int ftc_cache_resize (TYPE_2__*) ;

__attribute__((used)) static void
  ftc_node_hash_unlink( FTC_Node node0,
                        FTC_Cache cache )
  {
    FTC_Node *pnode = FTC_NODE_TOP_FOR_HASH( cache, node0->hash );


    for (;;)
    {
      FTC_Node node = *pnode;


      if ( !node )
      {
        FT_TRACE0(( "ftc_node_hash_unlink: unknown node\n" ));
        return;
      }

      if ( node == node0 )
        break;

      pnode = &(*pnode)->link;
    }

    *pnode = node0->link;
    node0->link = ((void*)0);

    cache->slack++;
    ftc_cache_resize( cache );
  }
