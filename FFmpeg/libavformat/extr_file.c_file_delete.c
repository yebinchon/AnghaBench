
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; } ;
typedef TYPE_1__ URLContext ;


 int AVERROR (scalar_t__) ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOSYS ;
 scalar_t__ ENOTDIR ;
 int av_strstart (char const*,char*,char const**) ;
 scalar_t__ errno ;
 int rmdir (char const*) ;
 int unlink (char const*) ;

__attribute__((used)) static int file_delete(URLContext *h)
{
    return AVERROR(ENOSYS);

}
