
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IMG_TAPE_WriteAdvance (int ,int) ;
 int cassette_file ;
 scalar_t__ cassette_writable ;

__attribute__((used)) static void CassetteWrite(int num_ticks)
{
 if (cassette_writable)
  IMG_TAPE_WriteAdvance(cassette_file, num_ticks);
}
