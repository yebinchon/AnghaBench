
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX_LENGTH ;
 int strlcpy (char*,char*,int) ;
 int stub1 (char*) ;
 int stub2 (char*) ;

void label_sanitize(char *label, bool (*left)(char*), bool (*right)(char*))
{
   bool copy = 1;
   int rindex = 0;
   int lindex = 0;
   char new_label[PATH_MAX_LENGTH];

   for (; lindex < PATH_MAX_LENGTH && label[lindex] != '\0'; lindex++)
   {
      if (copy)
      {

         if ((*left)(&label[lindex]))
            copy = 0;

         if (copy)
            new_label[rindex++] = label[lindex];
      }
      else if ((*right)(&label[lindex]))
         copy = 1;
   }

   new_label[rindex] = '\0';

   strlcpy(label, new_label, PATH_MAX_LENGTH);
}
