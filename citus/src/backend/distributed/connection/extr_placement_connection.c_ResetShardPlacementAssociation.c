
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MultiConnection {int referencedPlacements; } ;


 int dlist_init (int *) ;

void
ResetShardPlacementAssociation(struct MultiConnection *connection)
{
 dlist_init(&connection->referencedPlacements);
}
