
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ num_transforms; } ;
struct TYPE_4__ {int cutoffTransforms; int cutoffTransformsCount; int dict_words; int buckets; int hash_table_lengths; int hash_table_words; scalar_t__ num_transforms; int words; } ;
typedef TYPE_1__ BrotliEncoderDictionary ;


 int BrotliGetDictionary () ;
 TYPE_3__* BrotliGetTransforms () ;
 int kCutoffTransforms ;
 int kCutoffTransformsCount ;
 int kStaticDictionaryBuckets ;
 int kStaticDictionaryHashLengths ;
 int kStaticDictionaryHashWords ;
 int kStaticDictionaryWords ;

void BrotliInitEncoderDictionary(BrotliEncoderDictionary* dict) {
  dict->words = BrotliGetDictionary();
  dict->num_transforms = (uint32_t)BrotliGetTransforms()->num_transforms;

  dict->hash_table_words = kStaticDictionaryHashWords;
  dict->hash_table_lengths = kStaticDictionaryHashLengths;
  dict->buckets = kStaticDictionaryBuckets;
  dict->dict_words = kStaticDictionaryWords;

  dict->cutoffTransformsCount = kCutoffTransformsCount;
  dict->cutoffTransforms = kCutoffTransforms;
}
