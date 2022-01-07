
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_5__ {int listing_method; } ;
typedef TYPE_2__ FTPContext ;
typedef int AVIODirEntry ;





 int ftp_parse_entry_mlsd (char*,int *) ;
 int ftp_parse_entry_nlst (char*,int *) ;

__attribute__((used)) static int ftp_parse_entry(URLContext *h, char *line, AVIODirEntry *next)
{
    FTPContext *s = h->priv_data;

    switch (s->listing_method) {
    case 130:
        return ftp_parse_entry_mlsd(line, next);
    case 129:
        return ftp_parse_entry_nlst(line, next);
    case 128:
    default:
        return -1;
    }
}
