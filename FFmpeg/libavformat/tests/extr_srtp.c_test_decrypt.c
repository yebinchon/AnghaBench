
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct SRTPContext {int dummy; } ;


 int ff_srtp_decrypt (struct SRTPContext*,int *,int*) ;
 int memcpy (int *,int const*,int) ;
 int print_data (int *,int) ;

__attribute__((used)) static int test_decrypt(struct SRTPContext *srtp, const uint8_t *in, int len,
                        uint8_t *out)
{
    memcpy(out, in, len);
    if (!ff_srtp_decrypt(srtp, out, &len)) {
        print_data(out, len);
        return len;
    } else
        return -1;
}
