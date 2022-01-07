
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int buffer; } ;
struct TYPE_6__ {TYPE_1__* lpVtbl; } ;
struct TYPE_5__ {int (* Unlock ) (TYPE_2__*,int ,int ,int *,int ) ;} ;


 TYPE_4__ dma ;
 int locksize ;
 TYPE_2__* pDSBuf ;
 int stub1 (TYPE_2__*,int ,int ,int *,int ) ;

void SNDDMA_Submit( void ) {

 if ( pDSBuf ) {
  pDSBuf->lpVtbl->Unlock(pDSBuf, dma.buffer, locksize, ((void*)0), 0);
 }
}
