
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; int size; } ;
typedef TYPE_1__ ucvector ;
typedef int LodePNGInfo ;
typedef int LodePNGDecompressSettings ;


 int CERROR_BREAK (unsigned int,int) ;
 unsigned int lodepng_add_text (int *,char*,char*) ;
 int lodepng_free (char*) ;
 scalar_t__ lodepng_malloc (unsigned int) ;
 int ucvector_cleanup (TYPE_1__*) ;
 int ucvector_init (TYPE_1__*) ;
 int ucvector_push_back (TYPE_1__*,int ) ;
 unsigned int zlib_decompress (scalar_t__*,int *,unsigned char*,unsigned int,int const*) ;

__attribute__((used)) static unsigned readChunk_zTXt(LodePNGInfo* info, const LodePNGDecompressSettings* zlibsettings,
                               const unsigned char* data, size_t chunkLength)
{
  unsigned error = 0;
  unsigned i;

  unsigned length, string2_begin;
  char *key = 0;
  ucvector decoded;

  ucvector_init(&decoded);

  while(!error)
  {
    for(length = 0; length < chunkLength && data[length] != 0; length++) ;
    if(length + 2 >= chunkLength) CERROR_BREAK(error, 75);
    if(length < 1 || length > 79) CERROR_BREAK(error, 89);

    key = (char*)lodepng_malloc(length + 1);
    if(!key) CERROR_BREAK(error, 83);

    key[length] = 0;
    for(i = 0; i < length; i++) key[i] = data[i];

    if(data[length + 1] != 0) CERROR_BREAK(error, 72);

    string2_begin = length + 2;
    if(string2_begin > chunkLength) CERROR_BREAK(error, 75);

    length = chunkLength - string2_begin;

    error = zlib_decompress(&decoded.data, &decoded.size,
                            (unsigned char*)(&data[string2_begin]),
                            length, zlibsettings);
    if(error) break;
    ucvector_push_back(&decoded, 0);

    error = lodepng_add_text(info, key, (char*)decoded.data);

    break;
  }

  lodepng_free(key);
  ucvector_cleanup(&decoded);

  return error;
}
