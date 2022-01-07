
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int info ;
struct TYPE_7__ {int isValid; int nodeMap; } ;
struct TYPE_6__ {int keysize; int entrysize; int hcxt; int hash; } ;
typedef int Oid ;
typedef int * MemoryContext ;
typedef TYPE_1__ HASHCTL ;
typedef int ForeignConstraintRelationshipNode ;
typedef TYPE_2__ ForeignConstraintRelationshipGraph ;


 int ALLOCSET_DEFAULT_INITSIZE ;
 int ALLOCSET_DEFAULT_MAXSIZE ;
 int ALLOCSET_DEFAULT_MINSIZE ;
 int * AllocSetContextCreateExtended (int ,char*,int ,int ,int ) ;
 int CacheMemoryContext ;
 int ClearForeignConstraintRelationshipGraphContext () ;
 int CurrentMemoryContext ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_FUNCTION ;
 scalar_t__ IsForeignConstraintRelationshipGraphValid () ;
 int * MemoryContextSwitchTo (int *) ;
 int PopulateAdjacencyLists () ;
 TYPE_2__* fConstraintRelationshipGraph ;
 int hash_create (char*,int,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int oid_hash ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
CreateForeignConstraintRelationshipGraph()
{
 MemoryContext oldContext;
 MemoryContext fConstraintRelationshipMemoryContext = ((void*)0);
 HASHCTL info;
 uint32 hashFlags = 0;


 if (IsForeignConstraintRelationshipGraphValid())
 {
  return;
 }

 ClearForeignConstraintRelationshipGraphContext();

 fConstraintRelationshipMemoryContext = AllocSetContextCreateExtended(
  CacheMemoryContext,
  "Forign Constraint Relationship Graph Context",
  ALLOCSET_DEFAULT_MINSIZE,
  ALLOCSET_DEFAULT_INITSIZE,
  ALLOCSET_DEFAULT_MAXSIZE);

 oldContext = MemoryContextSwitchTo(fConstraintRelationshipMemoryContext);

 fConstraintRelationshipGraph = (ForeignConstraintRelationshipGraph *) palloc(
  sizeof(ForeignConstraintRelationshipGraph));
 fConstraintRelationshipGraph->isValid = 0;


 memset(&info, 0, sizeof(info));
 info.keysize = sizeof(Oid);
 info.entrysize = sizeof(ForeignConstraintRelationshipNode);
 info.hash = oid_hash;
 info.hcxt = CurrentMemoryContext;
 hashFlags = (HASH_ELEM | HASH_FUNCTION | HASH_CONTEXT);

 fConstraintRelationshipGraph->nodeMap = hash_create(
  "foreign key relationship map (oid)",
  32, &info, hashFlags);

 PopulateAdjacencyLists();

 fConstraintRelationshipGraph->isValid = 1;
 MemoryContextSwitchTo(oldContext);
}
