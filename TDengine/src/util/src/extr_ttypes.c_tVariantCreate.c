
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tVariant ;
struct TYPE_3__ {int type; int n; int z; } ;
typedef TYPE_1__ SSQLToken ;


 int tVariantCreateFromString (int *,int ,int ,int ) ;

void tVariantCreate(tVariant *pVar, SSQLToken *token) { tVariantCreateFromString(pVar, token->z, token->n, token->type); }
