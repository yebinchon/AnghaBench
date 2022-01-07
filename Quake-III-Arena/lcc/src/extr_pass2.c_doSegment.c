
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* rcc_interface_ty ;
struct TYPE_9__ {int (* segment ) (int ) ;} ;
struct TYPE_6__ {int seg; } ;
struct TYPE_7__ {TYPE_1__ rcc_Segment; } ;
struct TYPE_8__ {TYPE_2__ v; } ;


 TYPE_5__* IR ;
 int stub1 (int ) ;

__attribute__((used)) static void doSegment(rcc_interface_ty in) {
 (*IR->segment)(in->v.rcc_Segment.seg);
}
