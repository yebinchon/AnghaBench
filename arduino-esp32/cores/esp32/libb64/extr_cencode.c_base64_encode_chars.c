
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int base64_encodestate ;


 int base64_encode_block (char const*,int,char*,int *) ;
 int base64_encode_blockend (char*,int *) ;
 int base64_init_encodestate (int *) ;

int base64_encode_chars(const char* plaintext_in, int length_in, char* code_out)
{
    base64_encodestate _state;
    base64_init_encodestate(&_state);
    int len = base64_encode_block(plaintext_in, length_in, code_out, &_state);
    return len + base64_encode_blockend((code_out + len), &_state);
}
