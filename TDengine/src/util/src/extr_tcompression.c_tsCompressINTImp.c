
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int int8_t ;
typedef int int64_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int buffer ;


 int BITS_PER_BYTE ;
 int BUILDIN_CLZL (scalar_t__) ;
 int CHAR_BYTES ;
 scalar_t__ INT64MASK (char) ;
 int INT_BYTES ;
 int LONG_BYTES ;
 int SHORT_BYTES ;
 scalar_t__ SIMPLE8B_MAX_INT64 ;




 int exit (int) ;
 int memcpy (char* const,...) ;
 int perror (char*) ;
 int safeInt64Add (int,int) ;

int tsCompressINTImp(const char *const input, const int nelements, char *const output, const char type) {


  char bit_per_integer[] = {0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 15, 20, 30, 60};
  int selector_to_elems[] = {240, 120, 60, 30, 20, 15, 12, 10, 8, 7, 6, 5, 4, 3, 2, 1};
  char bit_to_selector[] = {0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 11, 11, 12, 12, 12, 13, 13, 13, 13, 13,
                            14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15,
                            15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15};


  int word_length = 0;
  switch (type) {
    case 131:
      word_length = LONG_BYTES;
      break;
    case 130:
      word_length = INT_BYTES;
      break;
    case 129:
      word_length = SHORT_BYTES;
      break;
    case 128:
      word_length = CHAR_BYTES;
      break;
    default:
      perror("Wrong integer types.\n");
      exit(1);
  }

  int byte_limit = nelements * word_length + 1;
  int opos = 1;
  int64_t prev_value = 0;

  for (int i = 0; i < nelements;) {
    char selector = 0;
    char bit = 0;
    int elems = 0;
    int64_t prev_value_tmp = prev_value;

    for (int j = i; j < nelements; j++) {

      int64_t curr_value = 0;
      switch (type) {
        case 128:
          curr_value = (int64_t)(*((int8_t *)input + j));
          break;
        case 129:
          curr_value = (int64_t)(*((int16_t *)input + j));
          break;
        case 130:
          curr_value = (int64_t)(*((int32_t *)input + j));
          break;
        case 131:
          curr_value = (int64_t)(*((int64_t *)input + j));
          break;
      }

      if (!safeInt64Add(curr_value, -prev_value)) goto _copy_and_exit;

      int64_t diff = curr_value - prev_value_tmp;

      uint64_t zigzag_value = (diff >> (LONG_BYTES * BITS_PER_BYTE - 1)) ^ (diff << 1);

      if (zigzag_value >= SIMPLE8B_MAX_INT64) goto _copy_and_exit;

      char tmp_bit;
      if (zigzag_value == 0) {

        tmp_bit = 0;
      } else {
        tmp_bit = (LONG_BYTES * BITS_PER_BYTE) - BUILDIN_CLZL(zigzag_value);
      }

      if (elems + 1 <= selector_to_elems[selector] && elems + 1 <= selector_to_elems[bit_to_selector[tmp_bit]]) {

        selector = selector > bit_to_selector[tmp_bit] ? selector : bit_to_selector[tmp_bit];
        elems++;
        bit = bit_per_integer[selector];
      } else {

        while (elems < selector_to_elems[selector]) selector++;
        elems = selector_to_elems[selector];
        bit = bit_per_integer[selector];
        break;
      }
      prev_value_tmp = curr_value;
    }

    uint64_t buffer = 0;
    buffer |= (uint64_t)selector;
    for (int k = 0; k < elems; k++) {
      int64_t curr_value = 0;
      switch (type) {
        case 128:
          curr_value = (int64_t)(*((int8_t *)input + i));
          break;
        case 129:
          curr_value = (int64_t)(*((int16_t *)input + i));
          break;
        case 130:
          curr_value = (int64_t)(*((int32_t *)input + i));
          break;
        case 131:
          curr_value = (int64_t)(*((int64_t *)input + i));
          break;
      }
      int64_t diff = curr_value - prev_value;
      uint64_t zigzag_value = (diff >> (LONG_BYTES * BITS_PER_BYTE - 1)) ^ (diff << 1);
      buffer |= ((zigzag_value & INT64MASK(bit)) << (bit * k + 4));
      i++;
      prev_value = curr_value;
    }


    if (opos + sizeof(buffer) <= byte_limit) {
      memcpy(output + opos, &buffer, sizeof(buffer));
      opos += sizeof(buffer);
    } else {
    _copy_and_exit:
      output[0] = 1;
      memcpy(output + 1, input, byte_limit - 1);
      return byte_limit;
    }
  }


  output[0] = 0;
  return opos;
}
