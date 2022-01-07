
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;
typedef int CborValue ;
typedef int CborParser ;
typedef int CborEncoder ;


 int ESP_LOGI (int ,char*,...) ;
 int TAG ;
 int cbor_encode_boolean (int *,int) ;
 int cbor_encode_float (int *,double) ;
 int cbor_encode_simple_value (int *,int) ;
 int cbor_encode_text_stringz (int *,char*) ;
 int cbor_encode_uint (int *,int) ;
 int cbor_encode_undefined (int *) ;
 int cbor_encoder_close_container (int *,int *) ;
 int cbor_encoder_create_array (int *,int *,int) ;
 int cbor_encoder_create_map (int *,int *,int) ;
 int cbor_encoder_get_buffer_size (int *,int *) ;
 int cbor_encoder_init (int *,int *,int,int ) ;
 int cbor_parser_init (int *,int,int ,int *,int *) ;
 int cbor_value_to_json (int ,int *,int ) ;
 int example_dump_cbor_buffer (int *,int ) ;
 int puts (char*) ;
 int stdout ;

void app_main(void)
{
    CborEncoder root_encoder;
    CborParser root_parser;
    CborValue it;
    uint8_t buf[100];


    cbor_encoder_init(&root_encoder, buf, sizeof(buf), 0);


    CborEncoder array_encoder;
    CborEncoder map_encoder;
    cbor_encoder_create_array(&root_encoder, &array_encoder, 5);

    cbor_encoder_create_map(&array_encoder, &map_encoder, 3);

    cbor_encode_text_stringz(&map_encoder, "chip");
    cbor_encode_text_stringz(&map_encoder, "esp32");

    cbor_encode_text_stringz(&map_encoder, "unicore");
    cbor_encode_boolean(&map_encoder, 0);

    cbor_encode_text_stringz(&map_encoder, "ip");
    CborEncoder array2;
    cbor_encoder_create_array(&map_encoder, &array2, 4);

    cbor_encode_uint(&array2, 192);
    cbor_encode_uint(&array2, 168);
    cbor_encode_uint(&array2, 1);
    cbor_encode_uint(&array2, 100);
    cbor_encoder_close_container(&map_encoder, &array2);
    cbor_encoder_close_container(&array_encoder, &map_encoder);

    cbor_encode_float(&array_encoder, 3.14);

    cbor_encode_simple_value(&array_encoder, 99);

    cbor_encode_text_stringz(&array_encoder, "2019-07-10 09:00:00+0000");

    cbor_encode_undefined(&array_encoder);
    cbor_encoder_close_container(&root_encoder, &array_encoder);


    ESP_LOGI(TAG, "encoded buffer size %d", cbor_encoder_get_buffer_size(&root_encoder, buf));


    cbor_parser_init(buf, sizeof(buf), 0, &root_parser, &it);

    ESP_LOGI(TAG, "convert CBOR to JSON");

    cbor_value_to_json(stdout, &it, 0);
    puts("");

    ESP_LOGI(TAG, "decode CBOR manually");

    example_dump_cbor_buffer(&it, 0);
}
