
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int ) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static void vc_uri_remove_double_dot_segments( char *path_str )
{
   char *previous_segment = path_str;
   char *slash;

   if (previous_segment[0] == '/')
      previous_segment++;



   slash = strchr(previous_segment, '/');
   while (slash)
   {
      if (previous_segment[0] != '.' || previous_segment[1] != '.' || previous_segment[2] != '/')
      {
         if (slash[1] == '.' && slash[2] == '.')
         {
            bool previous_segment_removed = 1;

            switch (slash[3])
            {
            case '/':
               memmove(previous_segment, slash + 4, strlen(slash + 4) + 1);
               break;
            case '\0':
               *previous_segment = '\0';
               break;
            default:
               previous_segment_removed = 0;
            }

            if (previous_segment_removed)
            {


               if (previous_segment < path_str + 2)
                  break;


               slash = previous_segment - 1;
               while (--slash >= path_str && *slash != '/')
                  ;
            }
         }
      }
      previous_segment = slash + 1;
      slash = strchr(previous_segment, '/');
   }
}
