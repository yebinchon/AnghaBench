
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_entry {int num; int str; } ;


 int AVERROR (int ) ;
 int AVUNERROR (int) ;
 int FF_ARRAY_ELEMS (struct error_entry*) ;
 int av_strlcpy (char*,int ,size_t) ;
 struct error_entry* error_entries ;
 int snprintf (char*,size_t,char*,int) ;
 int strerror_r (int ,char*,size_t) ;

int av_strerror(int errnum, char *errbuf, size_t errbuf_size)
{
    int ret = 0, i;
    const struct error_entry *entry = ((void*)0);

    for (i = 0; i < FF_ARRAY_ELEMS(error_entries); i++) {
        if (errnum == error_entries[i].num) {
            entry = &error_entries[i];
            break;
        }
    }
    if (entry) {
        av_strlcpy(errbuf, entry->str, errbuf_size);
    } else {



        ret = -1;

        if (ret < 0)
            snprintf(errbuf, errbuf_size, "Error number %d occurred", errnum);
    }

    return ret;
}
