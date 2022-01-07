
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_17__ {int sz_pool; int (* infunc ) (TYPE_1__*,uint8_t*,int) ;int nrst; int* inbuf; int width; int height; int msx; int msy; int* qtid; int* mcubuf; int* dptr; int dctr; int dmsk; void* workbuf; scalar_t__* qttbl; scalar_t__** huffbits; scalar_t__** huffdata; scalar_t__** huffcode; void* device; void* pool; } ;
typedef int JRESULT ;
typedef TYPE_1__ JDEC ;


 int JDR_FMT1 ;
 int JDR_FMT3 ;
 int JDR_INP ;
 int JDR_MEM1 ;
 int JDR_MEM2 ;
 int JDR_OK ;
 int JDR_PAR ;
 int JD_SZBUF ;
 int LDB_WORD (int*) ;
 void* alloc_pool (TYPE_1__*,int) ;
 int create_huffman_tbl (TYPE_1__*,int*,int) ;
 int create_qt_tbl (TYPE_1__*,int*,int) ;
 int stub1 (TYPE_1__*,int*,int) ;
 int stub2 (TYPE_1__*,int*,int) ;
 int stub3 (TYPE_1__*,int*,int) ;
 int stub4 (TYPE_1__*,int*,int) ;
 int stub5 (TYPE_1__*,int*,int) ;
 int stub6 (TYPE_1__*,int*,int) ;
 int stub7 (TYPE_1__*,int*,int) ;
 int stub8 (TYPE_1__*,int*,int) ;
 int stub9 (TYPE_1__*,int*,int) ;

JRESULT jd_prepare (
 JDEC* jd,
 uint16_t (*infunc)(JDEC*, uint8_t*, uint16_t),
 void* pool,
 uint16_t sz_pool,
 void* dev
)
{
 uint8_t *seg, b;
 uint16_t marker;
 uint32_t ofs;
 uint16_t n, i, j, len;
 JRESULT rc;


 if (!pool) return JDR_PAR;

 jd->pool = pool;
 jd->sz_pool = sz_pool;
 jd->infunc = infunc;
 jd->device = dev;
 jd->nrst = 0;

 for (i = 0; i < 2; i++) {
  for (j = 0; j < 2; j++) {
   jd->huffbits[i][j] = 0;
   jd->huffcode[i][j] = 0;
   jd->huffdata[i][j] = 0;
  }
 }
 for (i = 0; i < 4; jd->qttbl[i++] = 0) ;

 jd->inbuf = seg = alloc_pool(jd, JD_SZBUF);
 if (!seg) return JDR_MEM1;

 if (jd->infunc(jd, seg, 2) != 2) return JDR_INP;
 if (LDB_WORD(seg) != 0xFFD8) return JDR_FMT1;
 ofs = 2;

 for (;;) {

  if (jd->infunc(jd, seg, 4) != 4) return JDR_INP;
  marker = LDB_WORD(seg);
  len = LDB_WORD(seg + 2);
  if (len <= 2 || (marker >> 8) != 0xFF) return JDR_FMT1;
  len -= 2;
  ofs += 4 + len;

  switch (marker & 0xFF) {
  case 0xC0:

   if (len > JD_SZBUF) return JDR_MEM2;
   if (jd->infunc(jd, seg, len) != len) return JDR_INP;

   jd->width = LDB_WORD(seg+3);
   jd->height = LDB_WORD(seg+1);
   if (seg[5] != 3) return JDR_FMT3;


   for (i = 0; i < 3; i++) {
    b = seg[7 + 3 * i];
    if (!i) {
     if (b != 0x11 && b != 0x22 && b != 0x21) {
      return JDR_FMT3;
     }
     jd->msx = b >> 4; jd->msy = b & 15;
    } else {
     if (b != 0x11) return JDR_FMT3;
    }
    b = seg[8 + 3 * i];
    if (b > 3) return JDR_FMT3;
    jd->qtid[i] = b;
   }
   break;

  case 0xDD:

   if (len > JD_SZBUF) return JDR_MEM2;
   if (jd->infunc(jd, seg, len) != len) return JDR_INP;


   jd->nrst = LDB_WORD(seg);
   break;

  case 0xC4:

   if (len > JD_SZBUF) return JDR_MEM2;
   if (jd->infunc(jd, seg, len) != len) return JDR_INP;


   rc = create_huffman_tbl(jd, seg, len);
   if (rc) return rc;
   break;

  case 0xDB:

   if (len > JD_SZBUF) return JDR_MEM2;
   if (jd->infunc(jd, seg, len) != len) return JDR_INP;


   rc = create_qt_tbl(jd, seg, len);
   if (rc) return rc;
   break;

  case 0xDA:

   if (len > JD_SZBUF) return JDR_MEM2;
   if (jd->infunc(jd, seg, len) != len) return JDR_INP;

   if (!jd->width || !jd->height) return JDR_FMT1;

   if (seg[0] != 3) return JDR_FMT3;


   for (i = 0; i < 3; i++) {
    b = seg[2 + 2 * i];
    if (b != 0x00 && b != 0x11) return JDR_FMT3;
    b = i ? 1 : 0;
    if (!jd->huffbits[b][0] || !jd->huffbits[b][1]) {
     return JDR_FMT1;
    }
    if (!jd->qttbl[jd->qtid[i]]) {
     return JDR_FMT1;
    }
   }


   n = jd->msy * jd->msx;
   if (!n) return JDR_FMT1;
   len = n * 64 * 2 + 64;
   if (len < 256) len = 256;
   jd->workbuf = alloc_pool(jd, len);
   if (!jd->workbuf) return JDR_MEM1;
   jd->mcubuf = (uint8_t*)alloc_pool(jd, (uint16_t)((n + 2) * 64));
   if (!jd->mcubuf) return JDR_MEM1;


   jd->dptr = seg; jd->dctr = 0; jd->dmsk = 0;
   if (ofs %= JD_SZBUF) {
    jd->dctr = jd->infunc(jd, seg + ofs, (uint16_t)(JD_SZBUF - ofs));
    jd->dptr = seg + ofs - 1;
   }

   return JDR_OK;

  case 0xC1:
  case 0xC2:
  case 0xC3:
  case 0xC5:
  case 0xC6:
  case 0xC7:
  case 0xC9:
  case 0xCA:
  case 0xCB:
  case 0xCD:
  case 0xCE:
  case 0xCF:
  case 0xD9:
   return JDR_FMT3;

  default:

   if (jd->infunc(jd, 0, len) != len) {
    return JDR_INP;
   }
  }
 }
}
