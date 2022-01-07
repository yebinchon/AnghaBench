
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uivector ;
struct TYPE_4__ {unsigned short* zeros; unsigned short* head; unsigned short* chain; int* val; } ;
typedef TYPE_1__ Hash ;


 int ERROR_BREAK (int) ;
 int MAX_SUPPORTED_DEFLATE_LENGTH ;
 int addLengthDistance (int *,unsigned int,unsigned int) ;
 void* countZeros (unsigned char const*,size_t,unsigned int) ;
 unsigned int getHash (unsigned char const*,size_t,unsigned int) ;
 int uivector_push_back (int *,unsigned char const) ;
 int updateHashChain (TYPE_1__*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned encodeLZ77(uivector* out, Hash* hash,
                           const unsigned char* in, size_t inpos, size_t insize, unsigned windowsize,
                           unsigned minmatch, unsigned nicematch, unsigned lazymatching)
{
  unsigned short numzeros = 0;
  int usezeros = windowsize >= 8192;
  unsigned pos, i, error = 0;

  unsigned maxchainlength = windowsize >= 8192 ? windowsize : windowsize / 8;
  unsigned maxlazymatch = windowsize >= 8192 ? MAX_SUPPORTED_DEFLATE_LENGTH : 64;

  if(!error)
  {
    unsigned offset;
    unsigned length;
    unsigned lazy = 0;
    unsigned lazylength = 0, lazyoffset = 0;
    unsigned hashval;
    unsigned current_offset, current_length;
    const unsigned char *lastptr, *foreptr, *backptr;
    unsigned short hashpos, prevpos;

    for(pos = inpos; pos < insize; pos++)
    {
      size_t wpos = pos % windowsize;

      hashval = getHash(in, insize, pos);
      updateHashChain(hash, pos, hashval, windowsize);

      if(usezeros && hashval == 0)
      {
        numzeros = countZeros(in, insize, pos);
        hash->zeros[wpos] = numzeros;
      }


      length = 0;
      offset = 0;

      prevpos = hash->head[hashval];
      hashpos = hash->chain[prevpos];

      lastptr = &in[insize < pos + MAX_SUPPORTED_DEFLATE_LENGTH ? insize : pos + MAX_SUPPORTED_DEFLATE_LENGTH];


      if(hash->val[wpos] == (int)hashval)
      {
        unsigned chainlength = 0;
        for(;;)
        {

          if(prevpos < wpos && hashpos > prevpos && hashpos <= wpos) break;
          if(prevpos > wpos && (hashpos <= wpos || hashpos > prevpos)) break;
          if(chainlength++ >= maxchainlength) break;

          current_offset = hashpos <= wpos ? wpos - hashpos : wpos - hashpos + windowsize;
          if(current_offset > 0)
          {

            foreptr = &in[pos];
            backptr = &in[pos - current_offset];


            if(usezeros && hashval == 0 && hash->val[hashpos] == 0 )
            {
              unsigned short skip = hash->zeros[hashpos];
              if(skip > numzeros) skip = numzeros;
              backptr += skip;
              foreptr += skip;
            }


            while(foreptr != lastptr && *backptr == *foreptr)
            {
              ++backptr;
              ++foreptr;
            }
            current_length = (unsigned)(foreptr - &in[pos]);

            if(current_length > length)
            {
              length = current_length;
              offset = current_offset;

              if(current_length >= nicematch || current_length == MAX_SUPPORTED_DEFLATE_LENGTH) break;
            }
          }

          if(hashpos == hash->chain[hashpos]) break;

          prevpos = hashpos;
          hashpos = hash->chain[hashpos];
        }
      }

      if(lazymatching)
      {
        if(!lazy && length >= 3 && length <= maxlazymatch && length < MAX_SUPPORTED_DEFLATE_LENGTH)
        {
          lazy = 1;
          lazylength = length;
          lazyoffset = offset;
          continue;
        }
        if(lazy)
        {
          lazy = 0;
          if(pos == 0) ERROR_BREAK(81);
          if(length > lazylength + 1)
          {

            if(!uivector_push_back(out, in[pos - 1])) ERROR_BREAK(83 );
          }
          else
          {
            length = lazylength;
            offset = lazyoffset;
            hash->head[hashval] = -1;
            pos--;
          }
        }
      }
      if(length >= 3 && offset > windowsize) ERROR_BREAK(86 );


      if(length < 3)
      {
        if(!uivector_push_back(out, in[pos])) ERROR_BREAK(83 );
      }
      else if(length < minmatch || (length == 3 && offset > 4096))
      {


        if(!uivector_push_back(out, in[pos])) ERROR_BREAK(83 );
      }
      else
      {
        addLengthDistance(out, length, offset);
        for(i = 1; i < length; i++)
        {
          pos++;
          hashval = getHash(in, insize, pos);
          updateHashChain(hash, pos, hashval, windowsize);
          if(usezeros && hashval == 0)
          {
            hash->zeros[pos % windowsize] = countZeros(in, insize, pos);
          }
        }
      }

    }
  }

  return error;
}
