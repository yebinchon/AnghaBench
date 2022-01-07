
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int hb_stream_t ;


 int isIframe (int *,int const*,int) ;

__attribute__((used)) static int ts_isIframe( hb_stream_t *stream, const uint8_t *buf, int adapt_len )
{
    return isIframe( stream, buf + 13 + adapt_len, 188 - ( 13 + adapt_len ) );
}
