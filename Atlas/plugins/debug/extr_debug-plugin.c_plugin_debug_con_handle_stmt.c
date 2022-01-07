
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_24__ {int client; } ;
typedef TYPE_2__ network_mysqld_con ;
typedef int lua_State ;
typedef size_t gsize ;
struct TYPE_25__ {TYPE_1__* sc; } ;
typedef TYPE_3__ chassis ;
struct TYPE_27__ {int* str; } ;
struct TYPE_26__ {size_t len; struct TYPE_26__** pdata; void* type; struct TYPE_26__* name; } ;
struct TYPE_23__ {int * L; } ;
typedef TYPE_4__ MYSQL_FIELD ;
typedef TYPE_5__ GString ;
typedef TYPE_4__ GPtrArray ;


 int C (char*) ;



 void* FIELD_TYPE_VAR_STRING ;

 size_t NET_HEADER_SIZE ;
 int TRUE ;
 int g_ascii_strncasecmp (int ,int ) ;
 int g_free (TYPE_4__*) ;
 int g_ptr_array_add (TYPE_4__*,TYPE_4__*) ;
 int g_ptr_array_free (TYPE_4__*,int ) ;
 TYPE_4__* g_ptr_array_new () ;
 TYPE_4__* g_strdup (char*) ;
 TYPE_4__* g_strdup_printf (char*,int ) ;
 int luaL_loadstring (int *,int ) ;
 int lua_isboolean (int *,int) ;
 int lua_isnumber (int *,int) ;
 int lua_istable (int *,int) ;
 int lua_next (int *,int) ;
 int lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_table_key_to_mysql_field (int *,TYPE_4__*) ;
 int lua_toboolean (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_tonumber (int *,int) ;
 char* lua_tostring (int *,int) ;
 int lua_type (int *,int) ;
 int network_mysqld_con_send_error (int ,char const*,...) ;
 int network_mysqld_con_send_ok (int ) ;
 int network_mysqld_con_send_resultset (int ,TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* network_mysqld_proto_fielddef_new () ;
 int network_mysqld_proto_fielddefs_free (TYPE_4__*) ;
 TYPE_4__* network_mysqld_proto_fielddefs_new () ;

int plugin_debug_con_handle_stmt(chassis *chas, network_mysqld_con *con, GString *s) {
 gsize i, j;
 GPtrArray *fields;
 GPtrArray *rows;
 GPtrArray *row;

 switch(s->str[NET_HEADER_SIZE]) {
 case 130:
  fields = ((void*)0);
  rows = ((void*)0);
  row = ((void*)0);


  if (0 == g_ascii_strncasecmp(s->str + NET_HEADER_SIZE + 1, C("select @@version_comment limit 1"))) {
   MYSQL_FIELD *field;

   fields = network_mysqld_proto_fielddefs_new();

   field = network_mysqld_proto_fielddef_new();
   field->name = g_strdup("@@version_comment");
   field->type = FIELD_TYPE_VAR_STRING;
   g_ptr_array_add(fields, field);

   rows = g_ptr_array_new();
   row = g_ptr_array_new();
   g_ptr_array_add(row, g_strdup("MySQL Enterprise Agent"));
   g_ptr_array_add(rows, row);

   network_mysqld_con_send_resultset(con->client, fields, rows);

  } else if (0 == g_ascii_strncasecmp(s->str + NET_HEADER_SIZE + 1, C("select USER()"))) {
   MYSQL_FIELD *field;

   fields = network_mysqld_proto_fielddefs_new();
   field = network_mysqld_proto_fielddef_new();
   field->name = g_strdup("USER()");
   field->type = FIELD_TYPE_VAR_STRING;
   g_ptr_array_add(fields, field);

   rows = g_ptr_array_new();
   row = g_ptr_array_new();
   g_ptr_array_add(row, g_strdup("root"));
   g_ptr_array_add(rows, row);

   network_mysqld_con_send_resultset(con->client, fields, rows);
  } else {
   MYSQL_FIELD *field = ((void*)0);
   lua_State *L = chas->sc->L;

   if (0 == luaL_loadstring(L, s->str + NET_HEADER_SIZE + 1) &&
       0 == lua_pcall(L, 0, 1, 0)) {
    switch (lua_type(L, -1)) {
    case 128:

     fields = network_mysqld_proto_fielddefs_new();

     lua_pushnil(L);
     while (lua_next(L, -2) != 0) {
      if (lua_istable(L, -1)) {






       lua_pushnil(L);
       while (lua_next(L, -2) != 0) {
        if (!rows) {

         lua_table_key_to_mysql_field(L, fields);
        }

        if (!row) row = g_ptr_array_new();
        if (lua_isboolean(L, -1)) {
         g_ptr_array_add(row, g_strdup(lua_toboolean(L, -1) ? "TRUE" : "FALSE"));
        } else if (lua_isnumber(L, -1)) {
         g_ptr_array_add(row, g_strdup_printf("%.0f", lua_tonumber(L, -1)));
        } else {
         g_ptr_array_add(row, g_strdup(lua_tostring(L, -1)));
        }

        lua_pop(L, 1);
       }

       if (!rows) rows = g_ptr_array_new();
       g_ptr_array_add(rows, row);

       row = ((void*)0);
      } else {

       lua_table_key_to_mysql_field(L, fields);

       if (!row) row = g_ptr_array_new();
       if (lua_isboolean(L, -1)) {
        g_ptr_array_add(row, g_strdup(lua_toboolean(L, -1) ? "TRUE" : "FALSE"));
       } else if (lua_isnumber(L, -1)) {
        g_ptr_array_add(row, g_strdup_printf("%.0f", lua_tonumber(L, -1)));
       } else {
        g_ptr_array_add(row, g_strdup(lua_tostring(L, -1)));
       }
      }

      lua_pop(L, 1);
     }

     if (row) {


      if (!rows) rows = g_ptr_array_new();
      g_ptr_array_add(rows, row);
     }

     break;
    default:

     fields = network_mysqld_proto_fielddefs_new();
     field = network_mysqld_proto_fielddef_new();
     field->name = g_strdup("lua");
     field->type = FIELD_TYPE_VAR_STRING;
     g_ptr_array_add(fields, field);

     rows = g_ptr_array_new();
     row = g_ptr_array_new();
     g_ptr_array_add(row, g_strdup(lua_tostring(L, -1)));
     g_ptr_array_add(rows, row);

     break;
    }

    lua_pop(L, 1);

    network_mysqld_con_send_resultset(con->client, fields, rows);
   }



   if (!fields) {
    size_t err_len = 0;
    const char *err;

    err = lua_tolstring(L, -1, &err_len);

    network_mysqld_con_send_error(con->client, err, err_len);

    lua_pop(L, 1);
   }
  }


  if (fields) {
   network_mysqld_proto_fielddefs_free(fields);
   fields = ((void*)0);
  }

  if (rows) {
   for (i = 0; i < rows->len; i++) {
    row = rows->pdata[i];

    for (j = 0; j < row->len; j++) {
     g_free(row->pdata[j]);
    }

    g_ptr_array_free(row, TRUE);
   }
   g_ptr_array_free(rows, TRUE);
   rows = ((void*)0);
  }

  break;
 case 129:
  break;
 case 131:
  network_mysqld_con_send_ok(con->client);
  break;
 default:
  network_mysqld_con_send_error(con->client, C("unknown COM_*"));
  break;
 }

 return 0;
}
