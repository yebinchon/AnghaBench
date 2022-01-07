
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Status; } ;
typedef int NEO_CTX ;
typedef int BOOL ;


 int NeoNewStatus (int *) ;
 int NeoZero (TYPE_1__*,int) ;
 int TRUE ;
 TYPE_1__* ctx ;

BOOL NeoInit()
{

 NeoZero(ctx, sizeof(NEO_CTX));


 NeoNewStatus(&ctx->Status);

 return TRUE;
}
