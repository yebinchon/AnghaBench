
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gcount; double bscale; scalar_t__ data_max_found; scalar_t__ data_min_found; scalar_t__ bzero; scalar_t__ image_extension; scalar_t__ rgb; scalar_t__ groups; scalar_t__ pcount; scalar_t__ blank_found; scalar_t__ naxis_index; int state; } ;
typedef int FITSHeaderState ;
typedef TYPE_1__ FITSHeader ;



int avpriv_fits_header_init(FITSHeader *header, FITSHeaderState state)
{
    header->state = state;
    header->naxis_index = 0;
    header->blank_found = 0;
    header->pcount = 0;
    header->gcount = 1;
    header->groups = 0;
    header->rgb = 0;
    header->image_extension = 0;
    header->bscale = 1.0;
    header->bzero = 0;
    header->data_min_found = 0;
    header->data_max_found = 0;
    return 0;
}
