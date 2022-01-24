#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ nRef; scalar_t__ pShmNode; struct TYPE_8__* pPrev; struct TYPE_8__* pNext; } ;
typedef  TYPE_1__ unixInodeInfo ;
struct TYPE_9__ {TYPE_1__* pInode; } ;
typedef  TYPE_2__ unixFile ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* inodeList ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 () ; 

__attribute__((used)) static void FUNC5(unixFile *pFile){
  unixInodeInfo *pInode = pFile->pInode;
  FUNC1( FUNC4() );
  if( FUNC0(pInode) ){
    pInode->nRef--;
    if( pInode->nRef==0 ){
      FUNC1( pInode->pShmNode==0 );
      FUNC2(pFile);
      if( pInode->pPrev ){
        FUNC1( pInode->pPrev->pNext==pInode );
        pInode->pPrev->pNext = pInode->pNext;
      }else{
        FUNC1( inodeList==pInode );
        inodeList = pInode->pNext;
      }
      if( pInode->pNext ){
        FUNC1( pInode->pNext->pPrev==pInode );
        pInode->pNext->pPrev = pInode->pPrev;
      }
      FUNC3(pInode);
    }
  }
}