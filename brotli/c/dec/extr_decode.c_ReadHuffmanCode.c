
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_10__ {int substate_huffman; size_t sub_loop_counter; int space; size_t symbol; size_t* next_symbol; int* symbol_lists; int * code_length_histo; int repeat_code_len; int repeat; int prev_code_len; int * code_length_code_lengths; int table; int symbols_lists_array; } ;
struct TYPE_9__ {TYPE_2__ header; } ;
struct TYPE_11__ {TYPE_1__ arena; int br; } ;
typedef int HuffmanCode ;
typedef TYPE_2__ BrotliMetablockHeaderArena ;
typedef TYPE_3__ BrotliDecoderState ;
typedef int BrotliDecoderErrorCode ;
typedef int BrotliBitReader ;


 int BROTLI_DECODER_ERROR_FORMAT_HUFFMAN_SPACE ;
 int BROTLI_DECODER_ERROR_UNREACHABLE ;
 int BROTLI_DECODER_NEEDS_MORE_INPUT ;
 int BROTLI_DECODER_SUCCESS ;
 int BROTLI_FAILURE (int ) ;
 size_t BROTLI_HUFFMAN_MAX_CODE_LENGTH ;
 int BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH ;
 int BROTLI_INITIAL_REPEATED_CODE_LENGTH ;
 int BROTLI_LOG (char*) ;
 int BROTLI_LOG_UINT (size_t) ;






 int BrotliBuildCodeLengthsHuffmanTable (int ,int *,int *) ;
 size_t BrotliBuildHuffmanTable (int *,int ,int*,int *) ;
 size_t BrotliBuildSimpleHuffmanTable (int *,int ,int ,size_t) ;
 int BrotliSafeReadBits (int *,int,size_t*) ;
 int HUFFMAN_TABLE_BITS ;
 int ReadCodeLengthCodeLengths (TYPE_3__*) ;
 int ReadSimpleHuffmanSymbols (size_t,size_t,TYPE_3__*) ;
 int ReadSymbolCodeLengths (size_t,TYPE_3__*) ;
 int SafeReadSymbolCodeLengths (size_t,TYPE_3__*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static BrotliDecoderErrorCode ReadHuffmanCode(uint32_t alphabet_size_max,
                                              uint32_t alphabet_size_limit,
                                              HuffmanCode* table,
                                              uint32_t* opt_table_size,
                                              BrotliDecoderState* s) {
  BrotliBitReader* br = &s->br;
  BrotliMetablockHeaderArena* h = &s->arena.header;

  for (;;) {
    switch (h->substate_huffman) {
      case 131:
        if (!BrotliSafeReadBits(br, 2, &h->sub_loop_counter)) {
          return BROTLI_DECODER_NEEDS_MORE_INPUT;
        }
        BROTLI_LOG_UINT(h->sub_loop_counter);



        if (h->sub_loop_counter != 1) {
          h->space = 32;
          h->repeat = 0;
          memset(&h->code_length_histo[0], 0, sizeof(h->code_length_histo[0]) *
              (BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH + 1));
          memset(&h->code_length_code_lengths[0], 0,
              sizeof(h->code_length_code_lengths));
          h->substate_huffman = 133;
          continue;
        }


      case 128:

        if (!BrotliSafeReadBits(br, 2, &h->symbol)) {
          h->substate_huffman = 128;
          return BROTLI_DECODER_NEEDS_MORE_INPUT;
        }
        h->sub_loop_counter = 0;


      case 129: {
        BrotliDecoderErrorCode result =
            ReadSimpleHuffmanSymbols(alphabet_size_max, alphabet_size_limit, s);
        if (result != BROTLI_DECODER_SUCCESS) {
          return result;
        }
      }


      case 130: {
        uint32_t table_size;
        if (h->symbol == 3) {
          uint32_t bits;
          if (!BrotliSafeReadBits(br, 1, &bits)) {
            h->substate_huffman = 130;
            return BROTLI_DECODER_NEEDS_MORE_INPUT;
          }
          h->symbol += bits;
        }
        BROTLI_LOG_UINT(h->symbol);
        table_size = BrotliBuildSimpleHuffmanTable(
            table, HUFFMAN_TABLE_BITS, h->symbols_lists_array, h->symbol);
        if (opt_table_size) {
          *opt_table_size = table_size;
        }
        h->substate_huffman = 131;
        return BROTLI_DECODER_SUCCESS;
      }


      case 133: {
        uint32_t i;
        BrotliDecoderErrorCode result = ReadCodeLengthCodeLengths(s);
        if (result != BROTLI_DECODER_SUCCESS) {
          return result;
        }
        BrotliBuildCodeLengthsHuffmanTable(h->table,
                                           h->code_length_code_lengths,
                                           h->code_length_histo);
        memset(&h->code_length_histo[0], 0, sizeof(h->code_length_histo));
        for (i = 0; i <= BROTLI_HUFFMAN_MAX_CODE_LENGTH; ++i) {
          h->next_symbol[i] = (int)i - (BROTLI_HUFFMAN_MAX_CODE_LENGTH + 1);
          h->symbol_lists[h->next_symbol[i]] = 0xFFFF;
        }

        h->symbol = 0;
        h->prev_code_len = BROTLI_INITIAL_REPEATED_CODE_LENGTH;
        h->repeat = 0;
        h->repeat_code_len = 0;
        h->space = 32768;
        h->substate_huffman = 132;
      }


      case 132: {
        uint32_t table_size;
        BrotliDecoderErrorCode result = ReadSymbolCodeLengths(
            alphabet_size_limit, s);
        if (result == BROTLI_DECODER_NEEDS_MORE_INPUT) {
          result = SafeReadSymbolCodeLengths(alphabet_size_limit, s);
        }
        if (result != BROTLI_DECODER_SUCCESS) {
          return result;
        }

        if (h->space != 0) {
          BROTLI_LOG(("[ReadHuffmanCode] space = %d\n", (int)h->space));
          return BROTLI_FAILURE(BROTLI_DECODER_ERROR_FORMAT_HUFFMAN_SPACE);
        }
        table_size = BrotliBuildHuffmanTable(
            table, HUFFMAN_TABLE_BITS, h->symbol_lists, h->code_length_histo);
        if (opt_table_size) {
          *opt_table_size = table_size;
        }
        h->substate_huffman = 131;
        return BROTLI_DECODER_SUCCESS;
      }

      default:
        return
            BROTLI_FAILURE(BROTLI_DECODER_ERROR_UNREACHABLE);
    }
  }
}
