
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uLongf ;
struct TYPE_16__ {int seekable; } ;
struct TYPE_15__ {int size; scalar_t__ type; } ;
struct TYPE_14__ {int fc; } ;
typedef TYPE_1__ MOVContext ;
typedef TYPE_2__ MOVAtom ;
typedef int Bytef ;
typedef TYPE_3__ AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVIO_SEEKABLE_NORMAL ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int ENOSYS ;
 scalar_t__ MKTAG (char,char,char,char) ;
 scalar_t__ Z_OK ;
 int av_free (int *) ;
 int av_log (int ,int ,char*) ;
 int * av_malloc (long) ;
 long avio_rb32 (TYPE_3__*) ;
 scalar_t__ avio_rl32 (TYPE_3__*) ;
 scalar_t__ ffio_init_context (TYPE_3__*,int *,long,int ,int *,int *,int *,int *) ;
 int ffio_read_size (TYPE_3__*,int *,long) ;
 int mov_read_default (TYPE_1__*,TYPE_3__*,TYPE_2__) ;
 scalar_t__ uncompress (int *,int *,int const*,long) ;

__attribute__((used)) static int mov_read_cmov(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    av_log(c->fc, AV_LOG_ERROR, "this file requires zlib support compiled in\n");
    return AVERROR(ENOSYS);

}
