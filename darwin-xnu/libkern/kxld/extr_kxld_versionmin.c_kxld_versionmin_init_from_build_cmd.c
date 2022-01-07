
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct build_version_command {int platform; int has_versionmin; int minos; int version; } ;
typedef struct build_version_command KXLDversionmin ;






 int TRUE ;
 int check (struct build_version_command*) ;
 int kKxldVersionMinAppleTVOS ;
 int kKxldVersionMinMacOSX ;
 int kKxldVersionMinWatchOS ;
 int kKxldVersionMiniPhoneOS ;

void
kxld_versionmin_init_from_build_cmd(KXLDversionmin *versionmin, struct build_version_command *src)
{
    check(versionmin);
    check(src);
    switch (src->platform) {
    case 130:
        versionmin->platform = kKxldVersionMinMacOSX;
        break;
    case 131:
        versionmin->platform = kKxldVersionMiniPhoneOS;
        break;
    case 129:
        versionmin->platform = kKxldVersionMinAppleTVOS;
        break;
    case 128:
        versionmin->platform = kKxldVersionMinWatchOS;
        break;
    default:
        return;
    }
    versionmin->version = src->minos;
    versionmin->has_versionmin = TRUE;
}
