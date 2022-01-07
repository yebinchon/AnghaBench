
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ fixed_t ;
struct TYPE_3__ {int topdelta; int length; } ;
typedef TYPE_1__ column_t ;
typedef int byte ;


 int FRACBITS ;
 int FRACUNIT ;
 int colfunc () ;
 int * dc_source ;
 scalar_t__ dc_texturemid ;
 size_t dc_x ;
 int dc_yh ;
 int dc_yl ;
 int* mceilingclip ;
 int* mfloorclip ;
 int sprtopscreen ;
 int spryscale ;

void R_DrawMaskedColumn (column_t* column)
{
    int topscreen;
    int bottomscreen;
    fixed_t basetexturemid;

    basetexturemid = dc_texturemid;

    for ( ; column->topdelta != 0xff ; )
    {


 topscreen = sprtopscreen + spryscale*column->topdelta;
 bottomscreen = topscreen + spryscale*column->length;

 dc_yl = (topscreen+FRACUNIT-1)>>FRACBITS;
 dc_yh = (bottomscreen-1)>>FRACBITS;

 if (dc_yh >= mfloorclip[dc_x])
     dc_yh = mfloorclip[dc_x]-1;
 if (dc_yl <= mceilingclip[dc_x])
     dc_yl = mceilingclip[dc_x]+1;

 if (dc_yl <= dc_yh)
 {
     dc_source = (byte *)column + 3;
     dc_texturemid = basetexturemid - (column->topdelta<<FRACBITS);




     colfunc ();
 }
 column = (column_t *)( (byte *)column + column->length + 4);
    }

    dc_texturemid = basetexturemid;
}
