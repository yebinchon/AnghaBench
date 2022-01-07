
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int res ;


 int AV_HASH_MAX_SIZE ;
 int av_hash_final_b64 (int ,char*,int) ;
 int av_hash_final_hex (int ,char*,int) ;
 char* av_hash_get_name (int ) ;
 int hash ;
 scalar_t__ out_b64 ;
 int printf (char*,char*) ;

__attribute__((used)) static void finish(void)
{
    char res[2 * AV_HASH_MAX_SIZE + 4];

    printf("%s=", av_hash_get_name(hash));
    if (out_b64) {
        av_hash_final_b64(hash, res, sizeof(res));
        printf("b64:%s", res);
    } else {
        av_hash_final_hex(hash, res, sizeof(res));
        printf("0x%s", res);
    }
}
