
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef scalar_t__ uInt ;
struct TYPE_6__ {int * read; int check; int (* checkfn ) (int ,int *,scalar_t__) ;int * write; int * window; int * end; } ;
typedef TYPE_2__ inflate_blocks_statef ;
struct TYPE_5__ {scalar_t__ avail_out; int * next_out; int adler; int total_out; } ;
typedef int Byte ;


 int Z_BUF_ERROR ;
 int Z_NULL (int ,int *,scalar_t__) ;
 int Z_OK ;
 int stub1 (int ,int *,scalar_t__) ;
 int stub2 (int ,int *,scalar_t__) ;
 int zmemcpy (int *,int *,scalar_t__) ;

int inflate_flush(inflate_blocks_statef *s, z_streamp z, int r)
{
  uInt n;
  Byte *p;
  Byte *q;


  p = z->next_out;
  q = s->read;


  n = (uInt)((q <= s->write ? s->write : s->end) - q);
  if (n > z->avail_out) n = z->avail_out;
  if (n && r == Z_BUF_ERROR) r = Z_OK;


  z->avail_out -= n;
  z->total_out += n;


  if (s->checkfn != Z_NULL)
    z->adler = s->check = (*s->checkfn)(s->check, q, n);


  zmemcpy(p, q, n);
  p += n;
  q += n;


  if (q == s->end)
  {

    q = s->window;
    if (s->write == s->end)
      s->write = s->window;


    n = (uInt)(s->write - q);
    if (n > z->avail_out) n = z->avail_out;
    if (n && r == Z_BUF_ERROR) r = Z_OK;


    z->avail_out -= n;
    z->total_out += n;


    if (s->checkfn != Z_NULL)
      z->adler = s->check = (*s->checkfn)(s->check, q, n);


    zmemcpy(p, q, n);
    p += n;
    q += n;
  }


  z->next_out = p;
  s->read = q;


  return r;
}
