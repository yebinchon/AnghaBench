
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dest; int original_moov_size; scalar_t__ new_moov_size; } ;
typedef TYPE_1__ upgrade_stco_context_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {unsigned char* data; int header_size; } ;
typedef TYPE_2__ atom_t ;


 int AV_WB32 (int,int ) ;
 int AV_WB64 (int,scalar_t__) ;
 int BE_32 (unsigned char*) ;
 int CO64_ATOM ;
 int memcpy (int,unsigned char*,int) ;
 int set_atom_size (int,int,int) ;

__attribute__((used)) static void upgrade_stco_atom(upgrade_stco_context_t *context, atom_t *atom)
{
    unsigned char *pos;
    unsigned char *end;
    uint64_t new_offset;
    uint32_t offset_count;
    uint32_t original_offset;



    offset_count = BE_32(atom->data + 4);


    memcpy(context->dest, atom->data - atom->header_size, atom->header_size + 8);
    AV_WB32(context->dest + 4, CO64_ATOM);
    set_atom_size(context->dest, atom->header_size, atom->header_size + 8 + offset_count * 8);
    context->dest += atom->header_size + 8;


    for (pos = atom->data + 8, end = pos + offset_count * 4;
        pos < end;
        pos += 4) {
        original_offset = BE_32(pos) - context->original_moov_size;
        new_offset = (uint64_t)original_offset + context->new_moov_size;
        AV_WB64(context->dest, new_offset);
        context->dest += 8;
    }
}
