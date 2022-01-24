#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  size_t ht_slot ;
typedef  int /*<<< orphan*/  aSub ;

/* Variables and functions */
 int FUNC0 (struct Sublist*) ; 
 int const HASHTABLE_NPAGE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct Sublist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*,size_t*,int,size_t**,int*,size_t*) ; 

__attribute__((used)) static void FUNC4(
  const u32 *aContent,            /* Pages in wal */
  ht_slot *aBuffer,               /* Buffer of at least *pnList items to use */
  ht_slot *aList,                 /* IN/OUT: List to sort */
  int *pnList                     /* IN/OUT: Number of elements in aList[] */
){
  struct Sublist {
    int nList;                    /* Number of elements in aList */
    ht_slot *aList;               /* Pointer to sub-list content */
  };

  const int nList = *pnList;      /* Size of input list */
  int nMerge = 0;                 /* Number of elements in list aMerge */
  ht_slot *aMerge = 0;            /* List to be merged */
  int iList;                      /* Index into input list */
  int iSub = 0;                   /* Index into aSub array */
  struct Sublist aSub[13];        /* Array of sub-lists */

  FUNC2(aSub, 0, sizeof(aSub));
  FUNC1( nList<=HASHTABLE_NPAGE && nList>0 );
  FUNC1( HASHTABLE_NPAGE==(1<<(FUNC0(aSub)-1)) );

  for(iList=0; iList<nList; iList++){
    nMerge = 1;
    aMerge = &aList[iList];
    for(iSub=0; iList & (1<<iSub); iSub++){
      struct Sublist *p = &aSub[iSub];
      FUNC1( p->aList && p->nList<=(1<<iSub) );
      FUNC1( p->aList==&aList[iList&~((2<<iSub)-1)] );
      FUNC3(aContent, p->aList, p->nList, &aMerge, &nMerge, aBuffer);
    }
    aSub[iSub].aList = aMerge;
    aSub[iSub].nList = nMerge;
  }

  for(iSub++; iSub<FUNC0(aSub); iSub++){
    if( nList & (1<<iSub) ){
      struct Sublist *p = &aSub[iSub];
      FUNC1( p->nList<=(1<<iSub) );
      FUNC1( p->aList==&aList[nList&~((2<<iSub)-1)] );
      FUNC3(aContent, p->aList, p->nList, &aMerge, &nMerge, aBuffer);
    }
  }
  FUNC1( aMerge==aList );
  *pnList = nMerge;

#ifdef SQLITE_DEBUG
  {
    int i;
    for(i=1; i<*pnList; i++){
      assert( aContent[aList[i]] > aContent[aList[i-1]] );
    }
  }
#endif
}