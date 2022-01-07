; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_chassis.c_lua_chassis_stats.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_chassis.c_lua_chassis_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i8*, i32*, i32* (i32*)* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"currently only zero or one arguments are allowed\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@CHASSIS_LUA_REGISTRY_KEY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@chassis_stats_setluaval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"chassis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_chassis_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_chassis_stats(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* null, i8** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  br label %28

18:                                               ; preds = %1
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @luaL_checkstring(i32* %22, i32 1)
  store i8* %23, i8** %4, align 8
  br label %27

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @luaL_argerror(i32* %25, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %2, align 4
  br label %196

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_newtable(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %33 = load i32, i32* @CHASSIS_LUA_REGISTRY_KEY, align 4
  %34 = call i32 @lua_getfield(i32* %31, i32 %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @lua_topointer(i32* %35, i32 -1)
  %37 = inttoptr i64 %36 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %5, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @lua_pop(i32* %38, i32 1)
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %28
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = icmp ne %struct.TYPE_6__* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32* @chassis_stats_get(i32 %48)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %8, align 4
  br label %66

54:                                               ; preds = %45
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @lua_newtable(i32* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* @chassis_stats_setluaval, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @g_hash_table_foreach(i32* %58, i32 %59, i32* %60)
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @lua_setfield(i32* %62, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @g_hash_table_destroy(i32* %64)
  br label %66

66:                                               ; preds = %54, %52
  br label %67

67:                                               ; preds = %66, %42, %28
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = icmp ne %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %187

70:                                               ; preds = %67
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %187

75:                                               ; preds = %70
  store i64 0, i64* %7, align 8
  br label %76

76:                                               ; preds = %183, %75
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %77, %82
  br i1 %83, label %84, label %186

84:                                               ; preds = %76
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %89, i64 %90
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %6, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %182

97:                                               ; preds = %84
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32* (i32*)*, i32* (i32*)** %99, align 8
  %101 = icmp ne i32* (i32*)* %100, null
  br i1 %101, label %102, label %182

102:                                              ; preds = %97
  store i32* null, i32** %11, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %131

105:                                              ; preds = %102
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32* (i32*)*, i32* (i32*)** %107, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32* %108(i32* %111)
  store i32* %112, i32** %11, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* @TRUE, align 4
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %115, %105
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 @lua_newtable(i32* %118)
  %120 = load i32*, i32** %11, align 8
  %121 = load i32, i32* @chassis_stats_setluaval, align 4
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @g_hash_table_foreach(i32* %120, i32 %121, i32* %122)
  %124 = load i32*, i32** %3, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @lua_setfield(i32* %124, i32 -2, i8* %127)
  %129 = load i32*, i32** %11, align 8
  %130 = call i32 @g_hash_table_destroy(i32* %129)
  br label %181

131:                                              ; preds = %102
  %132 = load i8*, i8** %4, align 8
  %133 = call i64 @g_ascii_strcasecmp(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %131
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32* @chassis_stats_get(i32 %138)
  store i32* %139, i32** %11, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %8, align 4
  br label %186

144:                                              ; preds = %135
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %8, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* @chassis_stats_setluaval, align 4
  %148 = load i32*, i32** %3, align 8
  %149 = call i32 @g_hash_table_foreach(i32* %146, i32 %147, i32* %148)
  %150 = load i32*, i32** %11, align 8
  %151 = call i32 @g_hash_table_destroy(i32* %150)
  br label %186

152:                                              ; preds = %131
  %153 = load i8*, i8** %4, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @g_ascii_strcasecmp(i8* %153, i8* %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %152
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32* (i32*)*, i32* (i32*)** %161, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = call i32* %162(i32* %165)
  store i32* %166, i32** %11, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %159
  %170 = load i32, i32* @FALSE, align 4
  store i32 %170, i32* %8, align 4
  br label %186

171:                                              ; preds = %159
  %172 = load i32, i32* @TRUE, align 4
  store i32 %172, i32* %8, align 4
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* @chassis_stats_setluaval, align 4
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @g_hash_table_foreach(i32* %173, i32 %174, i32* %175)
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @g_hash_table_destroy(i32* %177)
  br label %186

179:                                              ; preds = %152
  br label %180

180:                                              ; preds = %179
  br label %181

181:                                              ; preds = %180, %117
  br label %182

182:                                              ; preds = %181, %97, %84
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %7, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %7, align 8
  br label %76

186:                                              ; preds = %171, %169, %144, %142, %76
  br label %187

187:                                              ; preds = %186, %70, %67
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %187
  %191 = load i32*, i32** %3, align 8
  %192 = call i32 @lua_pop(i32* %191, i32 1)
  %193 = load i32*, i32** %3, align 8
  %194 = call i32 @lua_pushnil(i32* %193)
  store i32 1, i32* %2, align 4
  br label %196

195:                                              ; preds = %187
  store i32 1, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %190, %24
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i32) #1

declare dso_local i64 @lua_topointer(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32* @chassis_stats_get(i32) #1

declare dso_local i32 @g_hash_table_foreach(i32*, i32, i32*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

declare dso_local i64 @g_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
