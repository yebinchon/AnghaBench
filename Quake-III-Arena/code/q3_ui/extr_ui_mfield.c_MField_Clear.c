
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ scroll; scalar_t__ cursor; scalar_t__* buffer; } ;
typedef TYPE_1__ mfield_t ;



void MField_Clear( mfield_t *edit ) {
 edit->buffer[0] = 0;
 edit->cursor = 0;
 edit->scroll = 0;
}
