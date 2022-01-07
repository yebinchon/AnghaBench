
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int libretrodb_t ;
typedef int libretrodb_cursor_t ;
struct TYPE_10__ {unsigned int count; struct TYPE_10__* list; struct TYPE_10__* serial; struct TYPE_10__* rom_name; struct TYPE_10__* publisher; struct TYPE_10__* pegi_rating; struct TYPE_10__* origin; struct TYPE_10__* name; struct TYPE_10__* genre; struct TYPE_10__* franchise; struct TYPE_10__* esrb_rating; struct TYPE_10__* enhancement_hw; struct TYPE_10__* elspa_rating; struct TYPE_10__* edge_magazine_review; struct TYPE_10__* description; struct TYPE_10__* cero_rating; struct TYPE_10__* bbfc_rating; int member_0; } ;
typedef TYPE_1__ database_info_t ;
typedef TYPE_1__ database_info_list_t ;


 int database_cursor_close (int *,int *) ;
 int database_cursor_iterate (int *,TYPE_1__*) ;
 scalar_t__ database_cursor_open (int *,int *,char const*,char const*) ;
 int database_info_list_free (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int libretrodb_cursor_free (int *) ;
 int * libretrodb_cursor_new () ;
 int libretrodb_free (int *) ;
 int * libretrodb_new () ;
 scalar_t__ malloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ realloc (TYPE_1__*,unsigned int) ;

database_info_list_t *database_info_list_new(
      const char *rdb_path, const char *query)
{
   int ret = 0;
   unsigned k = 0;
   database_info_t *database_info = ((void*)0);
   database_info_list_t *database_info_list = ((void*)0);
   libretrodb_t *db = libretrodb_new();
   libretrodb_cursor_t *cur = libretrodb_cursor_new();

   if (!db || !cur)
      goto end;

   if ((database_cursor_open(db, cur, rdb_path, query) != 0))
      goto end;

   database_info_list = (database_info_list_t*)
      malloc(sizeof(*database_info_list));

   if (!database_info_list)
      goto end;

   database_info_list->count = 0;
   database_info_list->list = ((void*)0);

   while (ret != -1)
   {
      database_info_t db_info = {0};
      ret = database_cursor_iterate(cur, &db_info);

      if (ret == 0)
      {
         database_info_t *db_ptr = ((void*)0);
         database_info_t *new_ptr = (database_info_t*)
            realloc(database_info, (k+1) * sizeof(database_info_t));

         if (!new_ptr)
         {
            if (db_info.bbfc_rating)
               free(db_info.bbfc_rating);
            if (db_info.cero_rating)
               free(db_info.cero_rating);
            if (db_info.description)
               free(db_info.description);
            if (db_info.edge_magazine_review)
               free(db_info.edge_magazine_review);
            if (db_info.elspa_rating)
               free(db_info.elspa_rating);
            if (db_info.enhancement_hw)
               free(db_info.enhancement_hw);
            if (db_info.esrb_rating)
               free(db_info.esrb_rating);
            if (db_info.franchise)
               free(db_info.franchise);
            if (db_info.genre)
               free(db_info.genre);
            if (db_info.name)
               free(db_info.name);
            if (db_info.origin)
               free(db_info.origin);
            if (db_info.pegi_rating)
               free(db_info.pegi_rating);
            if (db_info.publisher)
               free(db_info.publisher);
            if (db_info.rom_name)
               free(db_info.rom_name);
            if (db_info.serial)
               free(db_info.serial);
            database_info_list_free(database_info_list);
            free(database_info);
            free(database_info_list);
            database_info_list = ((void*)0);
            goto end;
         }

         database_info = new_ptr;
         db_ptr = &database_info[k];

         memcpy(db_ptr, &db_info, sizeof(*db_ptr));

         k++;
      }
   }

   database_info_list->list = database_info;
   database_info_list->count = k;

end:
   if (db)
   {
      database_cursor_close(db, cur);
      libretrodb_free(db);
   }
   if (cur)
      libretrodb_cursor_free(cur);

   return database_info_list;
}
