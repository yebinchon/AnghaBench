
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; unsigned char* data; } ;
typedef TYPE_1__ ucvector ;
typedef int HuffmanTree ;


 unsigned int* DISTANCEBASE ;
 unsigned int* DISTANCEEXTRA ;
 int ERROR_BREAK (int) ;
 unsigned int FIRST_LENGTH_CODE_INDEX ;
 int HuffmanTree_cleanup (int *) ;
 int HuffmanTree_init (int *) ;
 unsigned int LAST_LENGTH_CODE_INDEX ;
 size_t* LENGTHBASE ;
 unsigned int* LENGTHEXTRA ;
 unsigned int getTreeInflateDynamic (int *,int *,unsigned char const*,size_t*,size_t) ;
 int getTreeInflateFixed (int *,int *) ;
 unsigned int huffmanDecodeSymbol (unsigned char const*,size_t*,int *,size_t) ;
 scalar_t__ readBitsFromStream (size_t*,unsigned char const*,unsigned int) ;
 int ucvector_resize (TYPE_1__*,size_t) ;

__attribute__((used)) static unsigned inflateHuffmanBlock(ucvector* out, const unsigned char* in, size_t* bp,
                                    size_t* pos, size_t inlength, unsigned btype)
{
  unsigned error = 0;
  HuffmanTree tree_ll;
  HuffmanTree tree_d;
  size_t inbitlength = inlength * 8;

  HuffmanTree_init(&tree_ll);
  HuffmanTree_init(&tree_d);

  if(btype == 1) getTreeInflateFixed(&tree_ll, &tree_d);
  else if(btype == 2) error = getTreeInflateDynamic(&tree_ll, &tree_d, in, bp, inlength);

  while(!error)
  {

    unsigned code_ll = huffmanDecodeSymbol(in, bp, &tree_ll, inbitlength);
    if(code_ll <= 255)
    {
      if((*pos) >= out->size)
      {

        if(!ucvector_resize(out, ((*pos) + 1) * 2)) ERROR_BREAK(83 );
      }
      out->data[(*pos)] = (unsigned char)(code_ll);
      (*pos)++;
    }
    else if(code_ll >= FIRST_LENGTH_CODE_INDEX && code_ll <= LAST_LENGTH_CODE_INDEX)
    {
      unsigned code_d, distance;
      unsigned numextrabits_l, numextrabits_d;
      size_t start, forward, backward, length;


      length = LENGTHBASE[code_ll - FIRST_LENGTH_CODE_INDEX];


      numextrabits_l = LENGTHEXTRA[code_ll - FIRST_LENGTH_CODE_INDEX];
      if(*bp >= inbitlength) ERROR_BREAK(51);
      length += readBitsFromStream(bp, in, numextrabits_l);


      code_d = huffmanDecodeSymbol(in, bp, &tree_d, inbitlength);
      if(code_d > 29)
      {
        if(code_ll == (unsigned)(-1))
        {


          error = (*bp) > inlength * 8 ? 10 : 11;
        }
        else error = 18;
        break;
      }
      distance = DISTANCEBASE[code_d];


      numextrabits_d = DISTANCEEXTRA[code_d];
      if(*bp >= inbitlength) ERROR_BREAK(51);

      distance += readBitsFromStream(bp, in, numextrabits_d);


      start = (*pos);
      if(distance > start) ERROR_BREAK(52);
      backward = start - distance;
      if((*pos) + length >= out->size)
      {

        if(!ucvector_resize(out, ((*pos) + length) * 2)) ERROR_BREAK(83 );
      }

      for(forward = 0; forward < length; forward++)
      {
        out->data[(*pos)] = out->data[backward];
        (*pos)++;
        backward++;
        if(backward >= start) backward = start - distance;
      }
    }
    else if(code_ll == 256)
    {
      break;
    }
    else
    {


      error = (*bp) > inlength * 8 ? 10 : 11;
      break;
    }
  }

  HuffmanTree_cleanup(&tree_ll);
  HuffmanTree_cleanup(&tree_d);

  return error;
}
