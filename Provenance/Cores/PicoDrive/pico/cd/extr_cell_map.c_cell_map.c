
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int cell_map(int celln)
{
  int col, row;

  switch ((celln >> 12) & 7) {
    case 0:
    case 1:
    case 2:
    case 3:
      col = celln >> 8;
      row = celln & 0xff;
      break;
    case 4:
    case 5:
      col = celln >> 7;
      row = celln & 0x7f;
      row |= 0x10000 >> 8;
      break;
    case 6:
      col = celln >> 6;
      row = celln & 0x3f;
      row |= 0x18000 >> 8;
      break;
    case 7:
      col = celln >> 5;
      row = celln & 0x1f;
      row |= (celln & 0x7800) >> 6;
      break;
    default:
      col = row = 0;
      break;
  }

  return (col & 0x3f) + row*64;
}
