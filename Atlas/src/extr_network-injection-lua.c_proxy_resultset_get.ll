; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_resultset_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_resultset_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_12__, %struct.TYPE_11__*, i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i64, i32, i64, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c".resultset.fields isn't available if 'resultset_is_needed ~= true'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rows\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c".resultset.rows isn't available if 'resultset_is_needed ~= true'\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c".resultset.rows isn't available for prepared statements\00", align 1
@proxy_resultset_rows_iter = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"row_count\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c".resultset.raw isn't available if 'resultset_is_needed ~= true'\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@SERVER_STATUS_IN_TRANS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"in_trans\00", align 1
@SERVER_STATUS_AUTOCOMMIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"auto_commit\00", align 1
@SERVER_QUERY_NO_GOOD_INDEX_USED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"no_good_index_used\00", align 1
@SERVER_QUERY_NO_INDEX_USED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"no_index_used\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"warning_count\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"affected_rows\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"insert_id\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"query_status\00", align 1
@MYSQLD_PACKET_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_resultset_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_resultset_get(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @luaL_checkself(i32* %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_15__**
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @luaL_checklstring(i32* %15, i32 2, i32* %5)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @C(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = call i64 @strleq(i8* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @luaL_error(i32* %28, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %48

30:                                               ; preds = %22
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = call i64 @parse_resultset_fields(%struct.TYPE_13__* %31)
  %33 = icmp ne i64 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %30
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %2, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = call i32 @proxy_resultset_fields_lua_push_ref(i32* %41, %struct.TYPE_15__* %42)
  br label %47

44:                                               ; preds = %35
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @lua_pushnil(i32* %45)
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %27
  br label %306

49:                                               ; preds = %1
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @C(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i64 @strleq(i8* %50, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %49
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @luaL_error(i32* %61, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %96

63:                                               ; preds = %55
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 6
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @luaL_error(i32* %70, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0))
  br label %95

72:                                               ; preds = %63
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = call i64 @parse_resultset_fields(%struct.TYPE_13__* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  %85 = load i32*, i32** %2, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %87 = call i32 @proxy_resultset_lua_push_ref(i32* %85, %struct.TYPE_15__* %86)
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* @proxy_resultset_rows_iter, align 4
  %90 = call i32 @lua_pushcclosure(i32* %88, i32 %89, i32 1)
  br label %94

91:                                               ; preds = %72
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @lua_pushnil(i32* %92)
  br label %94

94:                                               ; preds = %91, %79
  br label %95

95:                                               ; preds = %94, %69
  br label %96

96:                                               ; preds = %95, %60
  br label %305

97:                                               ; preds = %49
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %101 = call i64 @strleq(i8* %98, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32*, i32** %2, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @lua_pushinteger(i32* %104, i64 %107)
  br label %304

109:                                              ; preds = %97
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @C(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %113 = call i64 @strleq(i8* %110, i32 %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32*, i32** %2, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @lua_pushinteger(i32* %116, i64 %119)
  br label %303

121:                                              ; preds = %109
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @C(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %125 = call i64 @strleq(i8* %122, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %121
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = icmp ne %struct.TYPE_11__* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @luaL_error(i32* %133, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0))
  br label %153

135:                                              ; preds = %127
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  store %struct.TYPE_14__* %142, %struct.TYPE_14__** %7, align 8
  %143 = load i32*, i32** %2, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, 4
  %152 = call i32 @lua_pushlstring(i32* %143, i64 %147, i64 %151)
  br label %153

153:                                              ; preds = %135, %132
  br label %302

154:                                              ; preds = %121
  %155 = load i8*, i8** %6, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @C(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %158 = call i64 @strleq(i8* %155, i32 %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %211

160:                                              ; preds = %154
  %161 = load i32*, i32** %2, align 8
  %162 = call i32 @lua_newtable(i32* %161)
  %163 = load i32*, i32** %2, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @SERVER_STATUS_IN_TRANS, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @lua_pushboolean(i32* %163, i32 %171)
  %173 = load i32*, i32** %2, align 8
  %174 = call i32 @lua_setfield(i32* %173, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %175 = load i32*, i32** %2, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @SERVER_STATUS_AUTOCOMMIT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @lua_pushboolean(i32* %175, i32 %183)
  %185 = load i32*, i32** %2, align 8
  %186 = call i32 @lua_setfield(i32* %185, i32 -2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %187 = load i32*, i32** %2, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @SERVER_QUERY_NO_GOOD_INDEX_USED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @lua_pushboolean(i32* %187, i32 %195)
  %197 = load i32*, i32** %2, align 8
  %198 = call i32 @lua_setfield(i32* %197, i32 -2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %199 = load i32*, i32** %2, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @SERVER_QUERY_NO_INDEX_USED, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i32
  %208 = call i32 @lua_pushboolean(i32* %199, i32 %207)
  %209 = load i32*, i32** %2, align 8
  %210 = call i32 @lua_setfield(i32* %209, i32 -2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %301

211:                                              ; preds = %154
  %212 = load i8*, i8** %6, align 8
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @C(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %215 = call i64 @strleq(i8* %212, i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %211
  %218 = load i32*, i32** %2, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @lua_pushinteger(i32* %218, i64 %222)
  br label %300

224:                                              ; preds = %211
  %225 = load i8*, i8** %6, align 8
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @C(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %228 = call i64 @strleq(i8* %225, i32 %226, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %224
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %230
  %237 = load i32*, i32** %2, align 8
  %238 = call i32 @lua_pushnil(i32* %237)
  br label %246

239:                                              ; preds = %230
  %240 = load i32*, i32** %2, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @lua_pushnumber(i32* %240, i32 %244)
  br label %246

246:                                              ; preds = %239, %236
  br label %299

247:                                              ; preds = %224
  %248 = load i8*, i8** %6, align 8
  %249 = load i32, i32* %5, align 4
  %250 = call i32 @C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %251 = call i64 @strleq(i8* %248, i32 %249, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %270

253:                                              ; preds = %247
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = load i32*, i32** %2, align 8
  %261 = call i32 @lua_pushnil(i32* %260)
  br label %269

262:                                              ; preds = %253
  %263 = load i32*, i32** %2, align 8
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @lua_pushnumber(i32* %263, i32 %267)
  br label %269

269:                                              ; preds = %262, %259
  br label %298

270:                                              ; preds = %247
  %271 = load i8*, i8** %6, align 8
  %272 = load i32, i32* %5, align 4
  %273 = call i32 @C(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %274 = call i64 @strleq(i8* %271, i32 %272, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %294

276:                                              ; preds = %270
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @MYSQLD_PACKET_NULL, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %276
  %284 = load i32*, i32** %2, align 8
  %285 = call i32 @lua_pushnil(i32* %284)
  br label %293

286:                                              ; preds = %276
  %287 = load i32*, i32** %2, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = call i32 @lua_pushinteger(i32* %287, i64 %291)
  br label %293

293:                                              ; preds = %286, %283
  br label %297

294:                                              ; preds = %270
  %295 = load i32*, i32** %2, align 8
  %296 = call i32 @lua_pushnil(i32* %295)
  br label %297

297:                                              ; preds = %294, %293
  br label %298

298:                                              ; preds = %297, %269
  br label %299

299:                                              ; preds = %298, %246
  br label %300

300:                                              ; preds = %299, %217
  br label %301

301:                                              ; preds = %300, %160
  br label %302

302:                                              ; preds = %301, %153
  br label %303

303:                                              ; preds = %302, %115
  br label %304

304:                                              ; preds = %303, %103
  br label %305

305:                                              ; preds = %304, %96
  br label %306

306:                                              ; preds = %305, %48
  ret i32 1
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i64 @strleq(i8*, i32, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @parse_resultset_fields(%struct.TYPE_13__*) #1

declare dso_local i32 @proxy_resultset_fields_lua_push_ref(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @proxy_resultset_lua_push_ref(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @lua_pushcclosure(i32*, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32 @lua_pushlstring(i32*, i64, i64) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
