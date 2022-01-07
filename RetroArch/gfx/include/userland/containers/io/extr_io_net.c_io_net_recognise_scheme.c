
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* scheme; int is_udp; } ;


 size_t countof (TYPE_1__*) ;
 TYPE_1__* recognised_schemes ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

__attribute__((used)) static bool io_net_recognise_scheme(const char *uri, bool *is_udp)
{
   size_t ii;
   const char *scheme;

   if (!uri)
      return 0;

   for (ii = 0; ii < countof(recognised_schemes); ii++)
   {
      scheme = recognised_schemes[ii].scheme;
      if (strncmp(scheme, uri, strlen(scheme)) == 0)
      {
         *is_udp = recognised_schemes[ii].is_udp;
         return 1;
      }
   }

   return 0;
}
