
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef enum dma_type { ____Placeholder_dma_type } dma_type ;
struct TYPE_4__ {size_t bank; } ;
struct TYPE_6__ {int* s68k_regs; int word_ram2M; int * word_ram1M; int prg_ram; TYPE_1__ pcm; int ** pcm_ram_b; } ;
struct TYPE_5__ {int dac; scalar_t__ ram; } ;


 int EL_ANOMALY ;
 int EL_CD ;
 TYPE_3__* Pico_mcd ;
 TYPE_2__ cdc ;
 int elprintf (int ,char*,int,...) ;
 int memcpy (int *,scalar_t__,int) ;
 int memcpy16bswap (void*,scalar_t__,int) ;






__attribute__((used)) static void do_dma(enum dma_type type, int words_in)
{
 int dma_addr = (Pico_mcd->s68k_regs[0x0a] << 8) | Pico_mcd->s68k_regs[0x0b];
  int src_addr = cdc.dac & 0x3ffe;
  int dst_addr = dma_addr;
  int words = words_in;
  int dst_limit = 0;
  uint8 *dst;
  int len;

  elprintf(EL_CD, "dma %d %04x->%04x %x",
    type, cdc.dac, dst_addr, words_in);

  switch (type)
  {
    case 132:
      dst_addr = (dst_addr << 2) & 0xffc;
      if (dst_addr + words * 2 > 0x1000) {
        elprintf(EL_ANOMALY, "pcm dma oflow: %x %x", dst_addr, words);
        words = (0x1000 - dst_addr) / 2;
      }
      dst = Pico_mcd->pcm_ram_b[Pico_mcd->pcm.bank];
      dst = dst + dst_addr;
      while (words > 0)
      {
        if (src_addr + words * 2 > 0x4000) {
          len = 0x4000 - src_addr;
          memcpy(dst, cdc.ram + src_addr, len);
          dst += len;
          src_addr = 0;
          words -= len / 2;
          continue;
        }
        memcpy(dst, cdc.ram + src_addr, words * 2);
        break;
      }
      goto update_dma;

    case 131:
      dst_addr <<= 3;
    dst = Pico_mcd->prg_ram + dst_addr;
      dst_limit = 0x80000;
      break;

    case 130:
      dst_addr = (dst_addr << 3) & 0x1fffe;
   dst = Pico_mcd->word_ram1M[0] + dst_addr;
      dst_limit = 0x20000;
      break;

    case 129:
      dst_addr = (dst_addr << 3) & 0x1fffe;
   dst = Pico_mcd->word_ram1M[1] + dst_addr;
      dst_limit = 0x20000;
      break;

    case 128:
      dst_addr = (dst_addr << 3) & 0x3fffe;
   dst = Pico_mcd->word_ram2M + dst_addr;
      dst_limit = 0x40000;
      break;

    default:
      elprintf(EL_ANOMALY, "invalid dma: %d", type);
      goto update_dma;
  }

  if (dst_addr + words * 2 > dst_limit) {
    elprintf(EL_ANOMALY, "cd dma %d oflow: %x %x", type, dst_addr, words);
    words = (dst_limit - dst_addr) / 2;
  }
  while (words > 0)
  {
    if (src_addr + words * 2 > 0x4000) {
      len = 0x4000 - src_addr;
      memcpy16bswap((void *)dst, cdc.ram + src_addr, len / 2);
      dst += len;
      src_addr = 0;
      words -= len / 2;
      continue;
    }
    memcpy16bswap((void *)dst, cdc.ram + src_addr, words);
    break;
  }

update_dma:

  cdc.dac += words_in * 2;
  if (type == 132)
    dma_addr += words_in >> 1;
  else
    dma_addr += words_in >> 2;

  Pico_mcd->s68k_regs[0x0a] = dma_addr >> 8;
  Pico_mcd->s68k_regs[0x0b] = dma_addr;
}
