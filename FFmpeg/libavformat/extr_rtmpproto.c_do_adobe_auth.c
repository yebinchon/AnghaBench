
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct AVMD5 {int dummy; } ;
typedef int hashstr ;
typedef int hash ;
typedef int challenge2 ;
struct TYPE_3__ {char* password; int auth_params; } ;
typedef TYPE_1__ RTMPContext ;


 int AVERROR (int ) ;
 int AV_BASE64_SIZE (int) ;
 int ENOMEM ;
 int av_base64_encode (char*,int,int *,int) ;
 int av_free (struct AVMD5*) ;
 int av_get_random_seed () ;
 struct AVMD5* av_md5_alloc () ;
 int av_md5_final (struct AVMD5*,int *) ;
 int av_md5_init (struct AVMD5*) ;
 int av_md5_update (struct AVMD5*,char const*,int ) ;
 int av_strlcatf (int ,int,char*,char const*) ;
 int snprintf (char*,int,char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static int do_adobe_auth(RTMPContext *rt, const char *user, const char *salt,
                         const char *opaque, const char *challenge)
{
    uint8_t hash[16];
    char hashstr[AV_BASE64_SIZE(sizeof(hash))], challenge2[10];
    struct AVMD5 *md5 = av_md5_alloc();
    if (!md5)
        return AVERROR(ENOMEM);

    snprintf(challenge2, sizeof(challenge2), "%08x", av_get_random_seed());

    av_md5_init(md5);
    av_md5_update(md5, user, strlen(user));
    av_md5_update(md5, salt, strlen(salt));
    av_md5_update(md5, rt->password, strlen(rt->password));
    av_md5_final(md5, hash);
    av_base64_encode(hashstr, sizeof(hashstr), hash,
                     sizeof(hash));
    av_md5_init(md5);
    av_md5_update(md5, hashstr, strlen(hashstr));
    if (opaque)
        av_md5_update(md5, opaque, strlen(opaque));
    else if (challenge)
        av_md5_update(md5, challenge, strlen(challenge));
    av_md5_update(md5, challenge2, strlen(challenge2));
    av_md5_final(md5, hash);
    av_base64_encode(hashstr, sizeof(hashstr), hash,
                     sizeof(hash));
    snprintf(rt->auth_params, sizeof(rt->auth_params),
             "?authmod=%s&user=%s&challenge=%s&response=%s",
             "adobe", user, challenge2, hashstr);
    if (opaque)
        av_strlcatf(rt->auth_params, sizeof(rt->auth_params),
                    "&opaque=%s", opaque);

    av_free(md5);
    return 0;
}
