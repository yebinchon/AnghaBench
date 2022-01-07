
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int JSON_RET_ERROR ;
 int memcpy (char*,char*,int) ;
 int parse_utf16 (char**,char**) ;
 int parson_free (char*) ;
 scalar_t__ parson_malloc (int) ;

__attribute__((used)) static char* process_string(char *input, UINT len) {
 char *input_ptr = input;
 UINT initial_size = (len + 1) * sizeof(char);
 UINT final_size = 0;
 char *output = ((void*)0), *output_ptr = ((void*)0), *resized_output = ((void*)0);
 output = (char*)parson_malloc(initial_size);
 if (output == ((void*)0)) {
  goto error;
 }
 output_ptr = output;
 while ((*input_ptr != '\0') && (UINT)(input_ptr - input) < len) {
  if (*input_ptr == '\\') {
   input_ptr++;
   switch (*input_ptr) {
   case '\"': *output_ptr = '\"'; break;
   case '\\': *output_ptr = '\\'; break;
   case '/': *output_ptr = '/'; break;
   case 'b': *output_ptr = '\b'; break;
   case 'f': *output_ptr = '\f'; break;
   case 'n': *output_ptr = '\n'; break;
   case 'r': *output_ptr = '\r'; break;
   case 't': *output_ptr = '\t'; break;
   case 'u':
    if (parse_utf16(&input_ptr, &output_ptr) == JSON_RET_ERROR) {
     goto error;
    }
    break;
   default:
    goto error;
   }
  }
  else if ((unsigned char)*input_ptr < 0x20) {
   goto error;
  }
  else {
   *output_ptr = *input_ptr;
  }
  output_ptr++;
  input_ptr++;
 }
 *output_ptr = '\0';

 final_size = (UINT)(output_ptr - output) + 1;

 resized_output = (char*)parson_malloc(final_size);
 if (resized_output == ((void*)0)) {
  goto error;
 }
 memcpy(resized_output, output, final_size);
 parson_free(output);
 return resized_output;
error:
 parson_free(output);
 return ((void*)0);
}
