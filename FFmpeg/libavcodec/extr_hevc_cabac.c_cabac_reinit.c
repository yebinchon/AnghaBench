
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cc; } ;
typedef TYPE_1__ HEVCLocalContext ;


 int AVERROR_INVALIDDATA ;
 int * skip_bytes (int *,int ) ;

__attribute__((used)) static int cabac_reinit(HEVCLocalContext *lc)
{
    return skip_bytes(&lc->cc, 0) == ((void*)0) ? AVERROR_INVALIDDATA : 0;
}
