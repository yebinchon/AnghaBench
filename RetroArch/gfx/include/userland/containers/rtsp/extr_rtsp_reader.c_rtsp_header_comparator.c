
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ RTSP_HEADER_T ;


 int strcasecmp (int ,int ) ;

__attribute__((used)) static int rtsp_header_comparator(const RTSP_HEADER_T *first, const RTSP_HEADER_T *second)
{
   return strcasecmp(first->name, second->name);
}
