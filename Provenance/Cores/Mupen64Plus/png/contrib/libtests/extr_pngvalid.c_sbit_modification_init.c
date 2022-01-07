
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; int add; int modify_fn; int chunk; } ;
struct TYPE_6__ {TYPE_5__ this; int sbit; } ;
typedef TYPE_1__ sbit_modification ;
struct TYPE_7__ {TYPE_5__* modifications; } ;
typedef TYPE_2__ png_modifier ;
typedef int png_byte ;


 int CHUNK_PLTE ;
 int CHUNK_sBIT ;
 int modification_init (TYPE_5__*) ;
 int sbit_modify ;

__attribute__((used)) static void
sbit_modification_init(sbit_modification *me, png_modifier *pm, png_byte sbit)
{
   modification_init(&me->this);
   me->this.chunk = CHUNK_sBIT;
   me->this.modify_fn = sbit_modify;
   me->this.add = CHUNK_PLTE;
   me->sbit = sbit;
   me->this.next = pm->modifications;
   pm->modifications = &me->this;
}
