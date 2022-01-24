#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {unsigned char* data; size_t size; } ;
typedef  TYPE_1__ uivector ;
typedef  int /*<<< orphan*/  ucvector ;
struct TYPE_21__ {size_t numcodes; } ;
struct TYPE_20__ {int /*<<< orphan*/  lazymatching; int /*<<< orphan*/  nicematch; int /*<<< orphan*/  minmatch; int /*<<< orphan*/  windowsize; scalar_t__ use_lz77; } ;
typedef  TYPE_2__ LodePNGCompressSettings ;
typedef  TYPE_3__ HuffmanTree ;
typedef  int /*<<< orphan*/  Hash ;

/* Variables and functions */
 int* CLCL_ORDER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 unsigned int FUNC5 (TYPE_3__*,int*,int,size_t,int) ; 
 int NUM_CODE_LENGTH_CODES ; 
 int /*<<< orphan*/  FUNC6 (size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (size_t*,int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC8 (size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,unsigned char const*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (size_t*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_3__*,TYPE_3__*) ; 

__attribute__((used)) static unsigned FUNC16(ucvector* out, size_t* bp, Hash* hash,
                               const unsigned char* data, size_t datapos, size_t dataend,
                               const LodePNGCompressSettings* settings, int final)
{
  unsigned error = 0;

  /*
  A block is compressed as follows: The PNG data is lz77 encoded, resulting in
  literal bytes and length/distance pairs. This is then huffman compressed with
  two huffman trees. One huffman tree is used for the lit and len values ("ll"),
  another huffman tree is used for the dist values ("d"). These two trees are
  stored using their code lengths, and to compress even more these code lengths
  are also run-length encoded and huffman compressed. This gives a huffman tree
  of code lengths "cl". The code lenghts used to describe this third tree are
  the code length code lengths ("clcl").
  */

  /*The lz77 encoded data, represented with integers since there will also be length and distance codes in it*/
  uivector lz77_encoded;
  HuffmanTree tree_ll; /*tree for lit,len values*/
  HuffmanTree tree_d; /*tree for distance codes*/
  HuffmanTree tree_cl; /*tree for encoding the code lengths representing tree_ll and tree_d*/
  uivector frequencies_ll; /*frequency of lit,len codes*/
  uivector frequencies_d; /*frequency of dist codes*/
  uivector frequencies_cl; /*frequency of code length codes*/
  uivector bitlen_lld; /*lit,len,dist code lenghts (int bits), literally (without repeat codes).*/
  uivector bitlen_lld_e; /*bitlen_lld encoded with repeat codes (this is a rudemtary run length compression)*/
  /*bitlen_cl is the code length code lengths ("clcl"). The bit lengths of codes to represent tree_cl
  (these are written as is in the file, it would be crazy to compress these using yet another huffman
  tree that needs to be represented by yet another set of code lengths)*/
  uivector bitlen_cl;
  size_t datasize = dataend - datapos;

  /*
  Due to the huffman compression of huffman tree representations ("two levels"), there are some anologies:
  bitlen_lld is to tree_cl what data is to tree_ll and tree_d.
  bitlen_lld_e is to bitlen_lld what lz77_encoded is to data.
  bitlen_cl is to bitlen_lld_e what bitlen_lld is to lz77_encoded.
  */

  unsigned BFINAL = final;
  size_t numcodes_ll, numcodes_d, i;
  unsigned HLIT, HDIST, HCLEN;

  FUNC11(&lz77_encoded);
  FUNC4(&tree_ll);
  FUNC4(&tree_d);
  FUNC4(&tree_cl);
  FUNC11(&frequencies_ll);
  FUNC11(&frequencies_d);
  FUNC11(&frequencies_cl);
  FUNC11(&bitlen_lld);
  FUNC11(&bitlen_lld_e);
  FUNC11(&bitlen_cl);

  /*This while loop never loops due to a break at the end, it is here to
  allow breaking out of it to the cleanup phase on error conditions.*/
  while(!error)
  {
    if(settings->use_lz77)
    {
      error = FUNC9(&lz77_encoded, hash, data, datapos, dataend, settings->windowsize,
                         settings->minmatch, settings->nicematch, settings->lazymatching);
      if(error) break;
    }
    else
    {
      if(!FUNC13(&lz77_encoded, datasize)) FUNC0(83 /*alloc fail*/);
      for(i = datapos; i < dataend; i++) lz77_encoded.data[i] = data[i]; /*no LZ77, but still will be Huffman compressed*/
    }

    if(!FUNC14(&frequencies_ll, 286, 0)) FUNC0(83 /*alloc fail*/);
    if(!FUNC14(&frequencies_d, 30, 0)) FUNC0(83 /*alloc fail*/);

    /*Count the frequencies of lit, len and dist codes*/
    for(i = 0; i < lz77_encoded.size; i++)
    {
      unsigned symbol = lz77_encoded.data[i];
      frequencies_ll.data[symbol]++;
      if(symbol > 256)
      {
        unsigned dist = lz77_encoded.data[i + 2];
        frequencies_d.data[dist]++;
        i += 3;
      }
    }
    frequencies_ll.data[256] = 1; /*there will be exactly 1 end code, at the end of the block*/

    /*Make both huffman trees, one for the lit and len codes, one for the dist codes*/
    error = FUNC5(&tree_ll, frequencies_ll.data, 257, frequencies_ll.size, 15);
    if(error) break;
    /*2, not 1, is chosen for mincodes: some buggy PNG decoders require at least 2 symbols in the dist tree*/
    error = FUNC5(&tree_d, frequencies_d.data, 2, frequencies_d.size, 15);
    if(error) break;

    numcodes_ll = tree_ll.numcodes; if(numcodes_ll > 286) numcodes_ll = 286;
    numcodes_d = tree_d.numcodes; if(numcodes_d > 30) numcodes_d = 30;
    /*store the code lengths of both generated trees in bitlen_lld*/
    for(i = 0; i < numcodes_ll; i++) FUNC12(&bitlen_lld, FUNC3(&tree_ll, (unsigned)i));
    for(i = 0; i < numcodes_d; i++) FUNC12(&bitlen_lld, FUNC3(&tree_d, (unsigned)i));

    /*run-length compress bitlen_ldd into bitlen_lld_e by using repeat codes 16 (copy length 3-6 times),
    17 (3-10 zeroes), 18 (11-138 zeroes)*/
    for(i = 0; i < (unsigned)bitlen_lld.size; i++)
    {
      unsigned j = 0; /*amount of repititions*/
      while(i + j + 1 < (unsigned)bitlen_lld.size && bitlen_lld.data[i + j + 1] == bitlen_lld.data[i]) j++;

      if(bitlen_lld.data[i] == 0 && j >= 2) /*repeat code for zeroes*/
      {
        j++; /*include the first zero*/
        if(j <= 10) /*repeat code 17 supports max 10 zeroes*/
        {
          FUNC12(&bitlen_lld_e, 17);
          FUNC12(&bitlen_lld_e, j - 3);
        }
        else /*repeat code 18 supports max 138 zeroes*/
        {
          if(j > 138) j = 138;
          FUNC12(&bitlen_lld_e, 18);
          FUNC12(&bitlen_lld_e, j - 11);
        }
        i += (j - 1);
      }
      else if(j >= 3) /*repeat code for value other than zero*/
      {
        size_t k;
        unsigned num = j / 6, rest = j % 6;
        FUNC12(&bitlen_lld_e, bitlen_lld.data[i]);
        for(k = 0; k < num; k++)
        {
          FUNC12(&bitlen_lld_e, 16);
          FUNC12(&bitlen_lld_e, 6 - 3);
        }
        if(rest >= 3)
        {
          FUNC12(&bitlen_lld_e, 16);
          FUNC12(&bitlen_lld_e, rest - 3);
        }
        else j -= rest;
        i += j;
      }
      else /*too short to benefit from repeat code*/
      {
        FUNC12(&bitlen_lld_e, bitlen_lld.data[i]);
      }
    }

    /*generate tree_cl, the huffmantree of huffmantrees*/

    if(!FUNC14(&frequencies_cl, NUM_CODE_LENGTH_CODES, 0)) FUNC0(83 /*alloc fail*/);
    for(i = 0; i < bitlen_lld_e.size; i++)
    {
      frequencies_cl.data[bitlen_lld_e.data[i]]++;
      /*after a repeat code come the bits that specify the number of repetitions,
      those don't need to be in the frequencies_cl calculation*/
      if(bitlen_lld_e.data[i] >= 16) i++;
    }

    error = FUNC5(&tree_cl, frequencies_cl.data,
                                            frequencies_cl.size, frequencies_cl.size, 7);
    if(error) break;

    if(!FUNC13(&bitlen_cl, tree_cl.numcodes)) FUNC0(83 /*alloc fail*/);
    for(i = 0; i < tree_cl.numcodes; i++)
    {
      /*lenghts of code length tree is in the order as specified by deflate*/
      bitlen_cl.data[i] = FUNC3(&tree_cl, CLCL_ORDER[i]);
    }
    while(bitlen_cl.data[bitlen_cl.size - 1] == 0 && bitlen_cl.size > 4)
    {
      /*remove zeros at the end, but minimum size must be 4*/
      if(!FUNC13(&bitlen_cl, bitlen_cl.size - 1)) FUNC0(83 /*alloc fail*/);
    }
    if(error) break;

    /*
    Write everything into the output

    After the BFINAL and BTYPE, the dynamic block consists out of the following:
    - 5 bits HLIT, 5 bits HDIST, 4 bits HCLEN
    - (HCLEN+4)*3 bits code lengths of code length alphabet
    - HLIT + 257 code lenghts of lit/length alphabet (encoded using the code length
      alphabet, + possible repetition codes 16, 17, 18)
    - HDIST + 1 code lengths of distance alphabet (encoded using the code length
      alphabet, + possible repetition codes 16, 17, 18)
    - compressed data
    - 256 (end code)
    */

    /*Write block type*/
    FUNC6(bp, out, BFINAL);
    FUNC6(bp, out, 0); /*first bit of BTYPE "dynamic"*/
    FUNC6(bp, out, 1); /*second bit of BTYPE "dynamic"*/

    /*write the HLIT, HDIST and HCLEN values*/
    HLIT = (unsigned)(numcodes_ll - 257);
    HDIST = (unsigned)(numcodes_d - 1);
    HCLEN = (unsigned)bitlen_cl.size - 4;
    /*trim zeroes for HCLEN. HLIT and HDIST were already trimmed at tree creation*/
    while(!bitlen_cl.data[HCLEN + 4 - 1] && HCLEN > 0) HCLEN--;
    FUNC7(bp, out, HLIT, 5);
    FUNC7(bp, out, HDIST, 5);
    FUNC7(bp, out, HCLEN, 4);

    /*write the code lenghts of the code length alphabet*/
    for(i = 0; i < HCLEN + 4; i++) FUNC7(bp, out, bitlen_cl.data[i], 3);

    /*write the lenghts of the lit/len AND the dist alphabet*/
    for(i = 0; i < bitlen_lld_e.size; i++)
    {
      FUNC8(bp, out, FUNC2(&tree_cl, bitlen_lld_e.data[i]),
                       FUNC3(&tree_cl, bitlen_lld_e.data[i]));
      /*extra bits of repeat codes*/
      if(bitlen_lld_e.data[i] == 16) FUNC7(bp, out, bitlen_lld_e.data[++i], 2);
      else if(bitlen_lld_e.data[i] == 17) FUNC7(bp, out, bitlen_lld_e.data[++i], 3);
      else if(bitlen_lld_e.data[i] == 18) FUNC7(bp, out, bitlen_lld_e.data[++i], 7);
    }

    /*write the compressed data symbols*/
    FUNC15(bp, out, &lz77_encoded, &tree_ll, &tree_d);
    /*error: the length of the end code 256 must be larger than 0*/
    if(FUNC3(&tree_ll, 256) == 0) FUNC0(64);

    /*write the end code*/
    FUNC8(bp, out, FUNC2(&tree_ll, 256), FUNC3(&tree_ll, 256));

    break; /*end of error-while*/
  }

  /*cleanup*/
  FUNC10(&lz77_encoded);
  FUNC1(&tree_ll);
  FUNC1(&tree_d);
  FUNC1(&tree_cl);
  FUNC10(&frequencies_ll);
  FUNC10(&frequencies_d);
  FUNC10(&frequencies_cl);
  FUNC10(&bitlen_lld_e);
  FUNC10(&bitlen_lld);
  FUNC10(&bitlen_cl);

  return error;
}