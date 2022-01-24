#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  file; TYPE_3__* param; } ;
typedef  TYPE_2__ pm_file ;
typedef  TYPE_3__* gzFile ;
struct TYPE_9__ {int align; } ;
struct TYPE_11__ {int fpos_out; int* index; unsigned char* out_buff; int fpos_in; int block_in_buff; unsigned char* in_buff; TYPE_1__ header; } ;
typedef  TYPE_3__ cso_struct ;

/* Variables and functions */
 int /*<<< orphan*/  EL_STATUS ; 
 scalar_t__ PMT_CSO ; 
 scalar_t__ PMT_UNCOMPRESSED ; 
 scalar_t__ PMT_ZIP ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int Z_DATA_ERROR ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 int FUNC7 (unsigned char*,int,unsigned char*,int) ; 

size_t FUNC8(void *ptr, size_t bytes, pm_file *stream)
{
  int ret;

  if (stream->type == PMT_UNCOMPRESSED)
  {
    ret = FUNC1(ptr, 1, bytes, stream->file);
  }
  else if (stream->type == PMT_ZIP)
  {
    gzFile gf = stream->param;
    int err;
    ret = FUNC4(gf, ptr, bytes);
    err = FUNC3(gf);
    if (ret > 0 && (err == Z_DATA_ERROR || err == Z_STREAM_END))
      /* we must reset stream pointer or else next seek/read fails */
      FUNC5(gf);
  }
  else if (stream->type == PMT_CSO)
  {
    cso_struct *cso = stream->param;
    int read_pos, read_len, out_offs, rret;
    int block = cso->fpos_out >> 11;
    int index = cso->index[block];
    int index_end = cso->index[block+1];
    unsigned char *out = ptr, *tmp_dst;

    ret = 0;
    while (bytes != 0)
    {
      out_offs = cso->fpos_out&0x7ff;
      if (out_offs == 0 && bytes >= 2048)
           tmp_dst = out;
      else tmp_dst = cso->out_buff;

      read_pos = (index&0x7fffffff) << cso->header.align;

      if (index < 0) {
        if (read_pos != cso->fpos_in)
          FUNC2(stream->file, read_pos, SEEK_SET);
        rret = FUNC1(tmp_dst, 1, 2048, stream->file);
        cso->fpos_in = read_pos + rret;
        if (rret != 2048) break;
      } else {
        read_len = (((index_end&0x7fffffff) << cso->header.align) - read_pos) & 0xfff;
        if (block != cso->block_in_buff)
        {
          if (read_pos != cso->fpos_in)
            FUNC2(stream->file, read_pos, SEEK_SET);
          rret = FUNC1(cso->in_buff, 1, read_len, stream->file);
          cso->fpos_in = read_pos + rret;
          if (rret != read_len) {
            FUNC0(EL_STATUS, "cso: read failed @ %08x", read_pos);
            break;
          }
          cso->block_in_buff = block;
        }
        rret = FUNC7(tmp_dst, 2048, cso->in_buff, read_len);
        if (rret != 0) {
          FUNC0(EL_STATUS, "cso: uncompress failed @ %08x with %i", read_pos, rret);
          break;
        }
      }

      rret = 2048;
      if (out_offs != 0 || bytes < 2048) {
        //elprintf(EL_STATUS, "cso: unaligned/nonfull @ %08x, offs=%i, len=%u", cso->fpos_out, out_offs, bytes);
        if (bytes < rret) rret = bytes;
        if (2048 - out_offs < rret) rret = 2048 - out_offs;
        FUNC6(out, tmp_dst + out_offs, rret);
      }
      ret += rret;
      out += rret;
      cso->fpos_out += rret;
      bytes -= rret;
      block++;
      index = index_end;
      index_end = cso->index[block+1];
    }
  }
  else
    ret = 0;

  return ret;
}