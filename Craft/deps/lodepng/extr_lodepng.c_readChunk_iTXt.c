
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* data; scalar_t__ size; scalar_t__ allocsize; } ;
typedef TYPE_1__ ucvector ;
typedef int LodePNGInfo ;
typedef int LodePNGDecompressSettings ;


 int CERROR_BREAK (unsigned int,int) ;
 unsigned int lodepng_add_itext (int *,char*,char*,char*,char*) ;
 int lodepng_free (char*) ;
 scalar_t__ lodepng_malloc (unsigned int) ;
 int ucvector_cleanup (TYPE_1__*) ;
 int ucvector_init (TYPE_1__*) ;
 int ucvector_push_back (TYPE_1__*,int ) ;
 int ucvector_resize (TYPE_1__*,unsigned int) ;
 unsigned int zlib_decompress (unsigned char**,scalar_t__*,unsigned char*,unsigned int,int const*) ;

__attribute__((used)) static unsigned readChunk_iTXt(LodePNGInfo* info, const LodePNGDecompressSettings* zlibsettings,
                               const unsigned char* data, size_t chunkLength)
{
  unsigned error = 0;
  unsigned i;

  unsigned length, begin, compressed;
  char *key = 0, *langtag = 0, *transkey = 0;
  ucvector decoded;
  ucvector_init(&decoded);

  while(!error)
  {


    if(chunkLength < 5) CERROR_BREAK(error, 30);


    for(length = 0; length < chunkLength && data[length] != 0; length++) ;
    if(length + 3 >= chunkLength) CERROR_BREAK(error, 75);
    if(length < 1 || length > 79) CERROR_BREAK(error, 89);

    key = (char*)lodepng_malloc(length + 1);
    if(!key) CERROR_BREAK(error, 83);

    key[length] = 0;
    for(i = 0; i < length; i++) key[i] = data[i];


    compressed = data[length + 1];
    if(data[length + 2] != 0) CERROR_BREAK(error, 72);





    begin = length + 3;
    length = 0;
    for(i = begin; i < chunkLength && data[i] != 0; i++) length++;

    langtag = (char*)lodepng_malloc(length + 1);
    if(!langtag) CERROR_BREAK(error, 83);

    langtag[length] = 0;
    for(i = 0; i < length; i++) langtag[i] = data[begin + i];


    begin += length + 1;
    length = 0;
    for(i = begin; i < chunkLength && data[i] != 0; i++) length++;

    transkey = (char*)lodepng_malloc(length + 1);
    if(!transkey) CERROR_BREAK(error, 83);

    transkey[length] = 0;
    for(i = 0; i < length; i++) transkey[i] = data[begin + i];


    begin += length + 1;

    length = chunkLength < begin ? 0 : chunkLength - begin;

    if(compressed)
    {

      error = zlib_decompress(&decoded.data, &decoded.size,
                              (unsigned char*)(&data[begin]),
                              length, zlibsettings);
      if(error) break;
      if(decoded.allocsize < decoded.size) decoded.allocsize = decoded.size;
      ucvector_push_back(&decoded, 0);
    }
    else
    {
      if(!ucvector_resize(&decoded, length + 1)) CERROR_BREAK(error, 83 );

      decoded.data[length] = 0;
      for(i = 0; i < length; i++) decoded.data[i] = data[begin + i];
    }

    error = lodepng_add_itext(info, key, langtag, transkey, (char*)decoded.data);

    break;
  }

  lodepng_free(key);
  lodepng_free(langtag);
  lodepng_free(transkey);
  ucvector_cleanup(&decoded);

  return error;
}
