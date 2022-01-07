
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ streamPos; } ;
typedef TYPE_1__ CMatchFinder ;



uint32_t MatchFinder_GetNumAvailableBytes(CMatchFinder *p) { return p->streamPos - p->pos; }
