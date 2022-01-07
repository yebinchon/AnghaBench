
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; int data; } ;
typedef TYPE_1__ ucvector ;
typedef scalar_t__ LodePNGColorType ;


 unsigned int addChunk (TYPE_1__*,char*,int ,int ) ;
 int lodepng_add32bitInt (TYPE_1__*,unsigned int) ;
 int ucvector_cleanup (TYPE_1__*) ;
 int ucvector_init (TYPE_1__*) ;
 int ucvector_push_back (TYPE_1__*,unsigned int) ;

__attribute__((used)) static unsigned addChunk_IHDR(ucvector* out, unsigned w, unsigned h,
                              LodePNGColorType colortype, unsigned bitdepth, unsigned interlace_method)
{
  unsigned error = 0;
  ucvector header;
  ucvector_init(&header);

  lodepng_add32bitInt(&header, w);
  lodepng_add32bitInt(&header, h);
  ucvector_push_back(&header, (unsigned char)bitdepth);
  ucvector_push_back(&header, (unsigned char)colortype);
  ucvector_push_back(&header, 0);
  ucvector_push_back(&header, 0);
  ucvector_push_back(&header, interlace_method);

  error = addChunk(out, "IHDR", header.data, header.size);
  ucvector_cleanup(&header);

  return error;
}
