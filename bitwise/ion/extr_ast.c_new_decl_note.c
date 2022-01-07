
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int note; } ;
typedef int SrcPos ;
typedef int Note ;
typedef TYPE_1__ Decl ;


 int DECL_NOTE ;
 TYPE_1__* new_decl (int ,int ,int *) ;

Decl *new_decl_note(SrcPos pos, Note note) {
    Decl *d = new_decl(DECL_NOTE, pos, ((void*)0));
    d->note = note;
    return d;
}
