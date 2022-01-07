
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int field_t ;


 int Field_VariableSizeDraw (int *,int,int,int,int ,int ) ;
 int SMALLCHAR_WIDTH ;

void Field_Draw( field_t *edit, int x, int y, int width, qboolean showCursor )
{
 Field_VariableSizeDraw( edit, x, y, width, SMALLCHAR_WIDTH, showCursor );
}
