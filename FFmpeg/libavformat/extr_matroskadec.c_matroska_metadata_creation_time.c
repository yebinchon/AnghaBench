
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVDictionary ;


 int avpriv_dict_set_timestamp (int **,char*,int) ;

__attribute__((used)) static void matroska_metadata_creation_time(AVDictionary **metadata, int64_t date_utc)
{

    avpriv_dict_set_timestamp(metadata, "creation_time", date_utc / 1000 + 978307200000000LL);
}
