
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int server_status; scalar_t__ warning_count; scalar_t__ query_status; int insert_id; scalar_t__ was_resultset; int affected_rows; scalar_t__ binary_encoded; } ;
struct TYPE_13__ {scalar_t__ rows; scalar_t__ bytes; TYPE_3__ qstat; TYPE_2__* result_queue; scalar_t__ rows_chunk_head; scalar_t__ row; scalar_t__ fields; } ;
typedef TYPE_4__ proxy_resultset_t ;
typedef int lua_State ;
typedef int gsize ;
struct TYPE_15__ {TYPE_4__* udata; } ;
struct TYPE_14__ {scalar_t__ len; scalar_t__ str; } ;
struct TYPE_11__ {TYPE_1__* head; } ;
struct TYPE_10__ {TYPE_5__* data; } ;
typedef TYPE_5__ GString ;
typedef TYPE_6__ GRef ;


 int C (char*) ;
 scalar_t__ MYSQLD_PACKET_NULL ;
 int SERVER_QUERY_NO_GOOD_INDEX_USED ;
 int SERVER_QUERY_NO_INDEX_USED ;
 int SERVER_STATUS_AUTOCOMMIT ;
 int SERVER_STATUS_IN_TRANS ;
 char* luaL_checklstring (int *,int,int *) ;
 scalar_t__ luaL_checkself (int *) ;
 int luaL_error (int *,char*) ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int lua_pushlstring (int *,scalar_t__,scalar_t__) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 scalar_t__ parse_resultset_fields (TYPE_4__*) ;
 int proxy_resultset_fields_lua_push_ref (int *,TYPE_6__*) ;
 int proxy_resultset_lua_push_ref (int *,TYPE_6__*) ;
 int proxy_resultset_rows_iter ;
 scalar_t__ strleq (char const*,int ,int ) ;

__attribute__((used)) static int proxy_resultset_get(lua_State *L) {
 GRef *ref = *(GRef **)luaL_checkself(L);
 proxy_resultset_t *res = ref->udata;
 gsize keysize = 0;
 const char *key = luaL_checklstring(L, 2, &keysize);

 if (strleq(key, keysize, C("fields"))) {
  if (!res->result_queue) {
   luaL_error(L, ".resultset.fields isn't available if 'resultset_is_needed ~= true'");
  } else {
   if (0 != parse_resultset_fields(res)) {

   }

   if (res->fields) {
    proxy_resultset_fields_lua_push_ref(L, ref);
   } else {
    lua_pushnil(L);
   }
  }
 } else if (strleq(key, keysize, C("rows"))) {
  if (!res->result_queue) {
   luaL_error(L, ".resultset.rows isn't available if 'resultset_is_needed ~= true'");
  } else if (res->qstat.binary_encoded) {
   luaL_error(L, ".resultset.rows isn't available for prepared statements");
  } else {
   parse_resultset_fields(res);

   if (res->rows_chunk_head) {
    res->row = res->rows_chunk_head;

    proxy_resultset_lua_push_ref(L, ref);

    lua_pushcclosure(L, proxy_resultset_rows_iter, 1);
   } else {
    lua_pushnil(L);
   }
  }
 } else if (strleq(key, keysize, C("row_count"))) {
  lua_pushinteger(L, res->rows);
 } else if (strleq(key, keysize, C("bytes"))) {
  lua_pushinteger(L, res->bytes);
 } else if (strleq(key, keysize, C("raw"))) {
  if (!res->result_queue) {
   luaL_error(L, ".resultset.raw isn't available if 'resultset_is_needed ~= true'");
  } else {
   GString *s;
   s = res->result_queue->head->data;
   lua_pushlstring(L, s->str + 4, s->len - 4);
  }
 } else if (strleq(key, keysize, C("flags"))) {
  lua_newtable(L);
  lua_pushboolean(L, (res->qstat.server_status & SERVER_STATUS_IN_TRANS) != 0);
  lua_setfield(L, -2, "in_trans");

  lua_pushboolean(L, (res->qstat.server_status & SERVER_STATUS_AUTOCOMMIT) != 0);
  lua_setfield(L, -2, "auto_commit");

  lua_pushboolean(L, (res->qstat.server_status & SERVER_QUERY_NO_GOOD_INDEX_USED) != 0);
  lua_setfield(L, -2, "no_good_index_used");

  lua_pushboolean(L, (res->qstat.server_status & SERVER_QUERY_NO_INDEX_USED) != 0);
  lua_setfield(L, -2, "no_index_used");
 } else if (strleq(key, keysize, C("warning_count"))) {
  lua_pushinteger(L, res->qstat.warning_count);
 } else if (strleq(key, keysize, C("affected_rows"))) {




  if (res->qstat.was_resultset) {
   lua_pushnil(L);
  } else {
   lua_pushnumber(L, res->qstat.affected_rows);
  }
 } else if (strleq(key, keysize, C("insert_id"))) {
  if (res->qstat.was_resultset) {
   lua_pushnil(L);
  } else {
   lua_pushnumber(L, res->qstat.insert_id);
  }
 } else if (strleq(key, keysize, C("query_status"))) {



  if (res->qstat.query_status == MYSQLD_PACKET_NULL) {
   lua_pushnil(L);
  } else {
   lua_pushinteger(L, res->qstat.query_status);
  }
 } else {
  lua_pushnil(L);
 }

 return 1;
}
