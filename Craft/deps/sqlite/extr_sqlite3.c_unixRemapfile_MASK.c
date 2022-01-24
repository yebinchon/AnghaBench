#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int h; scalar_t__ mmapSizeActual; scalar_t__ nFetchOut; scalar_t__ mmapSize; scalar_t__ mmapSizeMax; int ctrlFlags; void* pMapRegion; int /*<<< orphan*/  zPath; } ;
typedef  TYPE_1__ unixFile ;
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ i64 ;

/* Variables and functions */
 int /*<<< orphan*/ * MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  MREMAP_MAYMOVE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SQLITE_OK ; 
 int UNIXFILE_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(
  unixFile *pFd,                  /* File descriptor object */
  i64 nNew                        /* Required mapping size */
){
  const char *zErr = "mmap";
  int h = pFd->h;                      /* File descriptor open on db file */
  u8 *pOrig = (u8 *)pFd->pMapRegion;   /* Pointer to current file mapping */
  i64 nOrig = pFd->mmapSizeActual;     /* Size of pOrig region in bytes */
  u8 *pNew = 0;                        /* Location of new mapping */
  int flags = PROT_READ;               /* Flags to pass to mmap() */

  FUNC0( pFd->nFetchOut==0 );
  FUNC0( nNew>pFd->mmapSize );
  FUNC0( nNew<=pFd->mmapSizeMax );
  FUNC0( nNew>0 );
  FUNC0( pFd->mmapSizeActual>=pFd->mmapSize );
  FUNC0( MAP_FAILED!=0 );

  if( (pFd->ctrlFlags & UNIXFILE_RDONLY)==0 ) flags |= PROT_WRITE;

  if( pOrig ){
    const int szSyspage = FUNC4();
    i64 nReuse = (pFd->mmapSize & ~(szSyspage-1));
    u8 *pReq = &pOrig[nReuse];

    /* Unmap any pages of the existing mapping that cannot be reused. */
    if( nReuse!=nOrig ){
      FUNC3(pReq, nOrig-nReuse);
    }

#if HAVE_MREMAP
    pNew = osMremap(pOrig, nReuse, nNew, MREMAP_MAYMOVE);
    zErr = "mremap";
#else
    pNew = FUNC1(pReq, nNew-nReuse, flags, MAP_SHARED, h, nReuse);
    if( pNew!=MAP_FAILED ){
      if( pNew!=pReq ){
        FUNC3(pNew, nNew - nReuse);
        pNew = 0;
      }else{
        pNew = pOrig;
      }
    }
#endif

    /* The attempt to extend the existing mapping failed. Free it. */
    if( pNew==MAP_FAILED || pNew==0 ){
      FUNC3(pOrig, nReuse);
    }
  }

  /* If pNew is still NULL, try to create an entirely new mapping. */
  if( pNew==0 ){
    pNew = FUNC1(0, nNew, flags, MAP_SHARED, h, 0);
  }

  if( pNew==MAP_FAILED ){
    pNew = 0;
    nNew = 0;
    FUNC5(SQLITE_OK, zErr, pFd->zPath);

    /* If the mmap() above failed, assume that all subsequent mmap() calls
    ** will probably fail too. Fall back to using xRead/xWrite exclusively
    ** in this case.  */
    pFd->mmapSizeMax = 0;
  }
  pFd->pMapRegion = (void *)pNew;
  pFd->mmapSize = pFd->mmapSizeActual = nNew;
}