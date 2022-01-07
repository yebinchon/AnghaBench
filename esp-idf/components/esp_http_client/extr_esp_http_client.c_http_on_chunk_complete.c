
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 int ESP_LOGD (int ,char*) ;
 int TAG ;

__attribute__((used)) static int http_on_chunk_complete(http_parser *parser)
{
    ESP_LOGD(TAG, "http_on_chunk_complete");
    return 0;
}
