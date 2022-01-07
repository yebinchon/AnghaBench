; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/debug/extr_debug-plugin.c_plugin_debug_con_handle_stmt.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/debug/extr_debug-plugin.c_plugin_debug_con_handle_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_26__**, i8*, %struct.TYPE_26__* }

@NET_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"select @@version_comment limit 1\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"@@version_comment\00", align 1
@FIELD_TYPE_VAR_STRING = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"MySQL Enterprise Agent\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"select USER()\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"USER()\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"unknown COM_*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plugin_debug_con_handle_stmt(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %6, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @NET_HEADER_SIZE, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %354 [
    i32 130, label %24
    i32 129, label %348
    i32 131, label %349
  ]

24:                                               ; preds = %3
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @NET_HEADER_SIZE, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = ptrtoint i32* %30 to i32
  %32 = call i32 @C(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @g_ascii_strncasecmp(i32 %31, i32 %32)
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %24
  %36 = call %struct.TYPE_26__* (...) @network_mysqld_proto_fielddefs_new()
  store %struct.TYPE_26__* %36, %struct.TYPE_26__** %9, align 8
  %37 = call %struct.TYPE_26__* (...) @network_mysqld_proto_fielddef_new()
  store %struct.TYPE_26__* %37, %struct.TYPE_26__** %12, align 8
  %38 = call %struct.TYPE_26__* @g_strdup(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 3
  store %struct.TYPE_26__* %38, %struct.TYPE_26__** %40, align 8
  %41 = load i8*, i8** @FIELD_TYPE_VAR_STRING, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %46 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %44, %struct.TYPE_26__* %45)
  %47 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %10, align 8
  %48 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %48, %struct.TYPE_26__** %11, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %50 = call %struct.TYPE_26__* @g_strdup(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %51 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %49, %struct.TYPE_26__* %50)
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %54 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %52, %struct.TYPE_26__* %53)
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %60 = call i32 @network_mysqld_con_send_resultset(i32 %57, %struct.TYPE_26__* %58, %struct.TYPE_26__* %59)
  br label %296

61:                                               ; preds = %24
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @NET_HEADER_SIZE, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = ptrtoint i32* %67 to i32
  %69 = call i32 @C(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %70 = call i32 @g_ascii_strncasecmp(i32 %68, i32 %69)
  %71 = icmp eq i32 0, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %61
  %73 = call %struct.TYPE_26__* (...) @network_mysqld_proto_fielddefs_new()
  store %struct.TYPE_26__* %73, %struct.TYPE_26__** %9, align 8
  %74 = call %struct.TYPE_26__* (...) @network_mysqld_proto_fielddef_new()
  store %struct.TYPE_26__* %74, %struct.TYPE_26__** %13, align 8
  %75 = call %struct.TYPE_26__* @g_strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 3
  store %struct.TYPE_26__* %75, %struct.TYPE_26__** %77, align 8
  %78 = load i8*, i8** @FIELD_TYPE_VAR_STRING, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %83 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %81, %struct.TYPE_26__* %82)
  %84 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %84, %struct.TYPE_26__** %10, align 8
  %85 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %85, %struct.TYPE_26__** %11, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %87 = call %struct.TYPE_26__* @g_strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %88 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %86, %struct.TYPE_26__* %87)
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %91 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %89, %struct.TYPE_26__* %90)
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %97 = call i32 @network_mysqld_con_send_resultset(i32 %94, %struct.TYPE_26__* %95, %struct.TYPE_26__* %96)
  br label %295

98:                                               ; preds = %61
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %14, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  store i32* %103, i32** %15, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @NET_HEADER_SIZE, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = ptrtoint i32* %110 to i32
  %112 = call i32 @luaL_loadstring(i32* %104, i32 %111)
  %113 = icmp eq i32 0, %112
  br i1 %113, label %114, label %280

114:                                              ; preds = %98
  %115 = load i32*, i32** %15, align 8
  %116 = call i32 @lua_pcall(i32* %115, i32 0, i32 1, i32 0)
  %117 = icmp eq i32 0, %116
  br i1 %117, label %118, label %280

118:                                              ; preds = %114
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @lua_type(i32* %119, i32 -1)
  switch i32 %120, label %249 [
    i32 128, label %121
  ]

121:                                              ; preds = %118
  %122 = call %struct.TYPE_26__* (...) @network_mysqld_proto_fielddefs_new()
  store %struct.TYPE_26__* %122, %struct.TYPE_26__** %9, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @lua_pushnil(i32* %123)
  br label %125

125:                                              ; preds = %233, %121
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @lua_next(i32* %126, i32 -2)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %236

129:                                              ; preds = %125
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @lua_istable(i32* %130, i32 -1)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %194

133:                                              ; preds = %129
  %134 = load i32*, i32** %15, align 8
  %135 = call i32 @lua_pushnil(i32* %134)
  br label %136

136:                                              ; preds = %182, %133
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @lua_next(i32* %137, i32 -2)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %185

140:                                              ; preds = %136
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %142 = icmp ne %struct.TYPE_26__* %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load i32*, i32** %15, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %146 = call i32 @lua_table_key_to_mysql_field(i32* %144, %struct.TYPE_26__* %145)
  br label %147

147:                                              ; preds = %143, %140
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %149 = icmp ne %struct.TYPE_26__* %148, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %147
  %151 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %151, %struct.TYPE_26__** %11, align 8
  br label %152

152:                                              ; preds = %150, %147
  %153 = load i32*, i32** %15, align 8
  %154 = call i32 @lua_isboolean(i32* %153, i32 -1)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %158 = load i32*, i32** %15, align 8
  %159 = call i32 @lua_toboolean(i32* %158, i32 -1)
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %163 = call %struct.TYPE_26__* @g_strdup(i8* %162)
  %164 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %157, %struct.TYPE_26__* %163)
  br label %182

165:                                              ; preds = %152
  %166 = load i32*, i32** %15, align 8
  %167 = call i32 @lua_isnumber(i32* %166, i32 -1)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %171 = load i32*, i32** %15, align 8
  %172 = call i32 @lua_tonumber(i32* %171, i32 -1)
  %173 = call %struct.TYPE_26__* @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %172)
  %174 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %170, %struct.TYPE_26__* %173)
  br label %181

175:                                              ; preds = %165
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %177 = load i32*, i32** %15, align 8
  %178 = call i8* @lua_tostring(i32* %177, i32 -1)
  %179 = call %struct.TYPE_26__* @g_strdup(i8* %178)
  %180 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %176, %struct.TYPE_26__* %179)
  br label %181

181:                                              ; preds = %175, %169
  br label %182

182:                                              ; preds = %181, %156
  %183 = load i32*, i32** %15, align 8
  %184 = call i32 @lua_pop(i32* %183, i32 1)
  br label %136

185:                                              ; preds = %136
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %187 = icmp ne %struct.TYPE_26__* %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %189, %struct.TYPE_26__** %10, align 8
  br label %190

190:                                              ; preds = %188, %185
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %193 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %191, %struct.TYPE_26__* %192)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %11, align 8
  br label %233

194:                                              ; preds = %129
  %195 = load i32*, i32** %15, align 8
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %197 = call i32 @lua_table_key_to_mysql_field(i32* %195, %struct.TYPE_26__* %196)
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %199 = icmp ne %struct.TYPE_26__* %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %194
  %201 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %201, %struct.TYPE_26__** %11, align 8
  br label %202

202:                                              ; preds = %200, %194
  %203 = load i32*, i32** %15, align 8
  %204 = call i32 @lua_isboolean(i32* %203, i32 -1)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %208 = load i32*, i32** %15, align 8
  %209 = call i32 @lua_toboolean(i32* %208, i32 -1)
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %213 = call %struct.TYPE_26__* @g_strdup(i8* %212)
  %214 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %207, %struct.TYPE_26__* %213)
  br label %232

215:                                              ; preds = %202
  %216 = load i32*, i32** %15, align 8
  %217 = call i32 @lua_isnumber(i32* %216, i32 -1)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @lua_tonumber(i32* %221, i32 -1)
  %223 = call %struct.TYPE_26__* @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %222)
  %224 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %220, %struct.TYPE_26__* %223)
  br label %231

225:                                              ; preds = %215
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %227 = load i32*, i32** %15, align 8
  %228 = call i8* @lua_tostring(i32* %227, i32 -1)
  %229 = call %struct.TYPE_26__* @g_strdup(i8* %228)
  %230 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %226, %struct.TYPE_26__* %229)
  br label %231

231:                                              ; preds = %225, %219
  br label %232

232:                                              ; preds = %231, %206
  br label %233

233:                                              ; preds = %232, %190
  %234 = load i32*, i32** %15, align 8
  %235 = call i32 @lua_pop(i32* %234, i32 1)
  br label %125

236:                                              ; preds = %125
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %238 = icmp ne %struct.TYPE_26__* %237, null
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %241 = icmp ne %struct.TYPE_26__* %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %243, %struct.TYPE_26__** %10, align 8
  br label %244

244:                                              ; preds = %242, %239
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %247 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %245, %struct.TYPE_26__* %246)
  br label %248

248:                                              ; preds = %244, %236
  br label %271

249:                                              ; preds = %118
  %250 = call %struct.TYPE_26__* (...) @network_mysqld_proto_fielddefs_new()
  store %struct.TYPE_26__* %250, %struct.TYPE_26__** %9, align 8
  %251 = call %struct.TYPE_26__* (...) @network_mysqld_proto_fielddef_new()
  store %struct.TYPE_26__* %251, %struct.TYPE_26__** %14, align 8
  %252 = call %struct.TYPE_26__* @g_strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %253, i32 0, i32 3
  store %struct.TYPE_26__* %252, %struct.TYPE_26__** %254, align 8
  %255 = load i8*, i8** @FIELD_TYPE_VAR_STRING, align 8
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 2
  store i8* %255, i8** %257, align 8
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %260 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %258, %struct.TYPE_26__* %259)
  %261 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %261, %struct.TYPE_26__** %10, align 8
  %262 = call %struct.TYPE_26__* (...) @g_ptr_array_new()
  store %struct.TYPE_26__* %262, %struct.TYPE_26__** %11, align 8
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %264 = load i32*, i32** %15, align 8
  %265 = call i8* @lua_tostring(i32* %264, i32 -1)
  %266 = call %struct.TYPE_26__* @g_strdup(i8* %265)
  %267 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %263, %struct.TYPE_26__* %266)
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %270 = call i32 @g_ptr_array_add(%struct.TYPE_26__* %268, %struct.TYPE_26__* %269)
  br label %271

271:                                              ; preds = %249, %248
  %272 = load i32*, i32** %15, align 8
  %273 = call i32 @lua_pop(i32* %272, i32 1)
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %279 = call i32 @network_mysqld_con_send_resultset(i32 %276, %struct.TYPE_26__* %277, %struct.TYPE_26__* %278)
  br label %280

280:                                              ; preds = %271, %114, %98
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %282 = icmp ne %struct.TYPE_26__* %281, null
  br i1 %282, label %294, label %283

283:                                              ; preds = %280
  store i64 0, i64* %16, align 8
  %284 = load i32*, i32** %15, align 8
  %285 = call i8* @lua_tolstring(i32* %284, i32 -1, i64* %16)
  store i8* %285, i8** %17, align 8
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load i8*, i8** %17, align 8
  %290 = load i64, i64* %16, align 8
  %291 = call i32 (i32, i8*, ...) @network_mysqld_con_send_error(i32 %288, i8* %289, i64 %290)
  %292 = load i32*, i32** %15, align 8
  %293 = call i32 @lua_pop(i32* %292, i32 1)
  br label %294

294:                                              ; preds = %283, %280
  br label %295

295:                                              ; preds = %294, %72
  br label %296

296:                                              ; preds = %295, %35
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %298 = icmp ne %struct.TYPE_26__* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %301 = call i32 @network_mysqld_proto_fielddefs_free(%struct.TYPE_26__* %300)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %9, align 8
  br label %302

302:                                              ; preds = %299, %296
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %304 = icmp ne %struct.TYPE_26__* %303, null
  br i1 %304, label %305, label %347

305:                                              ; preds = %302
  store i64 0, i64* %7, align 8
  br label %306

306:                                              ; preds = %340, %305
  %307 = load i64, i64* %7, align 8
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp ult i64 %307, %310
  br i1 %311, label %312, label %343

312:                                              ; preds = %306
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 1
  %315 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %314, align 8
  %316 = load i64, i64* %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %315, i64 %316
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %317, align 8
  store %struct.TYPE_26__* %318, %struct.TYPE_26__** %11, align 8
  store i64 0, i64* %8, align 8
  br label %319

319:                                              ; preds = %333, %312
  %320 = load i64, i64* %8, align 8
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ult i64 %320, %323
  br i1 %324, label %325, label %336

325:                                              ; preds = %319
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %327, align 8
  %329 = load i64, i64* %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %328, i64 %329
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %330, align 8
  %332 = call i32 @g_free(%struct.TYPE_26__* %331)
  br label %333

333:                                              ; preds = %325
  %334 = load i64, i64* %8, align 8
  %335 = add i64 %334, 1
  store i64 %335, i64* %8, align 8
  br label %319

336:                                              ; preds = %319
  %337 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %338 = load i32, i32* @TRUE, align 4
  %339 = call i32 @g_ptr_array_free(%struct.TYPE_26__* %337, i32 %338)
  br label %340

340:                                              ; preds = %336
  %341 = load i64, i64* %7, align 8
  %342 = add i64 %341, 1
  store i64 %342, i64* %7, align 8
  br label %306

343:                                              ; preds = %306
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %345 = load i32, i32* @TRUE, align 4
  %346 = call i32 @g_ptr_array_free(%struct.TYPE_26__* %344, i32 %345)
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %10, align 8
  br label %347

347:                                              ; preds = %343, %302
  br label %362

348:                                              ; preds = %3
  br label %362

349:                                              ; preds = %3
  %350 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @network_mysqld_con_send_ok(i32 %352)
  br label %362

354:                                              ; preds = %3
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @C(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %359 = sext i32 %358 to i64
  %360 = inttoptr i64 %359 to i8*
  %361 = call i32 (i32, i8*, ...) @network_mysqld_con_send_error(i32 %357, i8* %360)
  br label %362

362:                                              ; preds = %354, %349, %348, %347
  ret i32 0
}

declare dso_local i32 @g_ascii_strncasecmp(i32, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local %struct.TYPE_26__* @network_mysqld_proto_fielddefs_new(...) #1

declare dso_local %struct.TYPE_26__* @network_mysqld_proto_fielddef_new(...) #1

declare dso_local %struct.TYPE_26__* @g_strdup(i8*) #1

declare dso_local i32 @g_ptr_array_add(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @g_ptr_array_new(...) #1

declare dso_local i32 @network_mysqld_con_send_resultset(i32, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local i32 @luaL_loadstring(i32*, i32) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_table_key_to_mysql_field(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_isnumber(i32*, i32) #1

declare dso_local %struct.TYPE_26__* @g_strdup_printf(i8*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @network_mysqld_con_send_error(i32, i8*, ...) #1

declare dso_local i32 @network_mysqld_proto_fielddefs_free(%struct.TYPE_26__*) #1

declare dso_local i32 @g_free(%struct.TYPE_26__*) #1

declare dso_local i32 @g_ptr_array_free(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @network_mysqld_con_send_ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
