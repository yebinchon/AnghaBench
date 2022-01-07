
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;


 int COL_FROM_ID (int ) ;
 int DEPTH_FROM_ID (int ) ;
 int DO_INTERLACE_FROM_ID (int ) ;
 int HEIGHT_FROM_ID (int ) ;
 int INTERLACE_FROM_ID (int ) ;
 int PALETTE_FROM_ID (int ) ;
 int WIDTH_FROM_ID (int ) ;
 size_t standard_name (char*,size_t,size_t,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static size_t
standard_name_from_id(char *buffer, size_t bufsize, size_t pos, png_uint_32 id)
{
   return standard_name(buffer, bufsize, pos, COL_FROM_ID(id),
      DEPTH_FROM_ID(id), PALETTE_FROM_ID(id), INTERLACE_FROM_ID(id),
      WIDTH_FROM_ID(id), HEIGHT_FROM_ID(id), DO_INTERLACE_FROM_ID(id));
}
