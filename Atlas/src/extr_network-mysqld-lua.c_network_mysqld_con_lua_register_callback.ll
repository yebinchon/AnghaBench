; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_network_mysqld_con_lua_register_callback.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_network_mysqld_con_lua_register_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@REGISTER_CALLBACK_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"__proxy\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@REGISTER_CALLBACK_LOAD_FAILED = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_GLOBALSINDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"queries\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"(lua-error) [%s]\0A%s\00", align 1
@REGISTER_CALLBACK_EXECUTE_FAILED = common dso_local global i32 0, align 4
@response_get = common dso_local global i32 0, align 4
@response_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_con_lua_register_callback(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @REGISTER_CALLBACK_SUCCESS, align 4
  store i32 %23, i32* %3, align 4
  br label %223

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @lua_isfunction(i32* %33, i32 -1)
  %35 = call i32 @g_assert(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @lua_getfenv(i32* %36, i32 -1)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @lua_istable(i32* %38, i32 -1)
  %40 = call i32 @g_assert(i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @lua_getglobal(i32* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @lua_getmetatable(i32* %43, i32 -1)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @lua_getfield(i32* %45, i32 -3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @lua_setfield(i32* %47, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @lua_getfield(i32* %49, i32 -3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @lua_setfield(i32* %51, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @lua_pop(i32* %53, i32 3)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @lua_isfunction(i32* %55, i32 -1)
  %57 = call i32 @g_assert(i32 %56)
  %58 = load i32, i32* @REGISTER_CALLBACK_SUCCESS, align 4
  store i32 %58, i32* %3, align 4
  br label %223

59:                                               ; preds = %24
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @network_mysqld_lua_load_script(%struct.TYPE_11__* %60, i8* %61)
  %63 = icmp ne i64 0, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @REGISTER_CALLBACK_LOAD_FAILED, align 4
  store i32 %65, i32* %3, align 4
  br label %223

66:                                               ; preds = %59
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = call i32 @network_mysqld_lua_setup_global(i32 %69, %struct.TYPE_12__* %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @lua_newthread(i32 %76)
  store i32* %77, i32** %6, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %82 = call i32 @luaL_ref(i32 %80, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @lua_gettop(i32* %85)
  store i32 %86, i32* %11, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @lua_xmove(i32 %89, i32* %90, i32 1)
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @lua_isfunction(i32* %92, i32 -1)
  %94 = call i32 @g_assert(i32 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @lua_newtable(i32* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @lua_newtable(i32* %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %101 = call i32 @lua_pushvalue(i32* %99, i32 %100)
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @lua_setfield(i32* %102, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @lua_setmetatable(i32* %104, i32 -2)
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @lua_newtable(i32* %106)
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @lua_istable(i32* %108, i32 -1)
  %110 = call i32 @g_assert(i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = call i8* @lua_newuserdata(i32* %111, i32 8)
  %113 = bitcast i8* %112 to i32**
  store i32** %113, i32*** %9, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32**, i32*** %9, align 8
  store i32* %117, i32** %118, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @proxy_getqueuemetatable(i32* %119)
  %121 = load i32*, i32** %6, align 8
  %122 = call i32 @lua_pushvalue(i32* %121, i32 -1)
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @lua_setfield(i32* %123, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @lua_setmetatable(i32* %125, i32 -2)
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @lua_setfield(i32* %127, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32*, i32** %6, align 8
  %130 = call i8* @lua_newuserdata(i32* %129, i32 8)
  %131 = bitcast i8* %130 to %struct.TYPE_10__**
  store %struct.TYPE_10__** %131, %struct.TYPE_10__*** %10, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %133 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  store %struct.TYPE_10__* %132, %struct.TYPE_10__** %133, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 @network_mysqld_con_getmetatable(i32* %134)
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @lua_setmetatable(i32* %136, i32 -2)
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @lua_setfield(i32* %138, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @lua_newtable(i32* %140)
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @lua_setfield(i32* %142, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @lua_setfield(i32* %144, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @lua_getglobal(i32* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @lua_istable(i32* %148, i32 -1)
  %150 = call i32 @g_assert(i32 %149)
  %151 = load i32*, i32** %6, align 8
  %152 = call i64 @lua_getmetatable(i32* %151, i32 -1)
  %153 = icmp eq i64 0, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %66
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @lua_newtable(i32* %155)
  br label %157

157:                                              ; preds = %154, %66
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 @lua_istable(i32* %158, i32 -1)
  %160 = call i32 @g_assert(i32 %159)
  %161 = load i32*, i32** %6, align 8
  %162 = call i32 @lua_getfield(i32* %161, i32 -3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32*, i32** %6, align 8
  %164 = call i32 @lua_istable(i32* %163, i32 -1)
  %165 = call i32 @g_assert(i32 %164)
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @lua_setfield(i32* %166, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @lua_getfield(i32* %168, i32 -3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 @lua_setfield(i32* %170, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @lua_setmetatable(i32* %172, i32 -2)
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @lua_pop(i32* %174, i32 1)
  %176 = load i32*, i32** %6, align 8
  %177 = call i32 @lua_isfunction(i32* %176, i32 -2)
  %178 = call i32 @g_assert(i32 %177)
  %179 = load i32*, i32** %6, align 8
  %180 = call i32 @lua_istable(i32* %179, i32 -1)
  %181 = call i32 @g_assert(i32 %180)
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @lua_setfenv(i32* %182, i32 -2)
  %184 = load i32*, i32** %6, align 8
  %185 = call i32 @lua_isfunction(i32* %184, i32 -1)
  %186 = call i32 @g_assert(i32 %185)
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @lua_pushvalue(i32* %187, i32 -1)
  %189 = load i32*, i32** %6, align 8
  %190 = call i64 @lua_pcall(i32* %189, i32 0, i32 0, i32 0)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %157
  %193 = load i8*, i8** %5, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = call i32 @lua_tostring(i32* %194, i32 -1)
  %196 = call i32 @g_critical(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %193, i32 %195)
  %197 = load i32*, i32** %6, align 8
  %198 = call i32 @lua_pop(i32* %197, i32 1)
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @luaL_unref(i32 %201, i32 %202, i32 %205)
  %207 = load i32, i32* @REGISTER_CALLBACK_EXECUTE_FAILED, align 4
  store i32 %207, i32* %3, align 4
  br label %223

208:                                              ; preds = %157
  %209 = load i32*, i32** %6, align 8
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  store i32* %209, i32** %211, align 8
  %212 = load i32*, i32** %6, align 8
  %213 = call i32 @lua_isfunction(i32* %212, i32 -1)
  %214 = call i32 @g_assert(i32 %213)
  %215 = load i32*, i32** %6, align 8
  %216 = call i32 @lua_gettop(i32* %215)
  %217 = load i32, i32* %11, align 4
  %218 = sub nsw i32 %216, %217
  %219 = icmp eq i32 %218, 1
  %220 = zext i1 %219 to i32
  %221 = call i32 @g_assert(i32 %220)
  %222 = load i32, i32* @REGISTER_CALLBACK_SUCCESS, align 4
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %208, %192, %64, %29, %22
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_getfenv(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @network_mysqld_lua_load_script(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @network_mysqld_lua_setup_global(i32, %struct.TYPE_12__*) #1

declare dso_local i32* @lua_newthread(i32) #1

declare dso_local i32 @luaL_ref(i32, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_xmove(i32, i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i8* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @proxy_getqueuemetatable(i32*) #1

declare dso_local i32 @network_mysqld_con_getmetatable(i32*) #1

declare dso_local i32 @lua_setfenv(i32*, i32) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @g_critical(i8*, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaL_unref(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
