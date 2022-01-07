
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; scalar_t__ start_time; scalar_t__ end_time; } ;
typedef TYPE_1__ SegmentListEntry ;
typedef int ListType ;
typedef int AVIOContext ;


 int AV_ESCAPE_FLAG_WHITESPACE ;
 int AV_ESCAPE_MODE_AUTO ;
 int AV_LOG_WARNING ;





 int av_assert0 (int) ;
 int av_escape (char**,char*,int *,int ,int ) ;
 int av_free (char*) ;
 int av_log (void*,int ,char*,char*) ;
 int avio_printf (int *,char*,char*,...) ;
 int print_csv_escaped_str (int *,char*) ;

__attribute__((used)) static void segment_list_print_entry(AVIOContext *list_ioctx,
                                     ListType list_type,
                                     const SegmentListEntry *list_entry,
                                     void *log_ctx)
{
    switch (list_type) {
    case 129:
        avio_printf(list_ioctx, "%s\n", list_entry->filename);
        break;
    case 132:
    case 131:
        print_csv_escaped_str(list_ioctx, list_entry->filename);
        avio_printf(list_ioctx, ",%f,%f\n", list_entry->start_time, list_entry->end_time);
        break;
    case 128:
        avio_printf(list_ioctx, "#EXTINF:%f,\n%s\n",
                    list_entry->end_time - list_entry->start_time, list_entry->filename);
        break;
    case 130:
    {
        char *buf;
        if (av_escape(&buf, list_entry->filename, ((void*)0), AV_ESCAPE_MODE_AUTO, AV_ESCAPE_FLAG_WHITESPACE) < 0) {
            av_log(log_ctx, AV_LOG_WARNING,
                   "Error writing list entry '%s' in list file\n", list_entry->filename);
            return;
        }
        avio_printf(list_ioctx, "file %s\n", buf);
        av_free(buf);
        break;
    }
    default:
        av_assert0(!"Invalid list type");
    }
}
