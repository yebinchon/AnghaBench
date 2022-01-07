; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_chassis.c_lua_chassis_log.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_chassis.c_lua_chassis_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.TYPE_6__ = type { i64 }

@lua_chassis_log.log_names = internal constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@lua_chassis_log.log_levels = internal constant [6 x i32] [i32 131, i32 133, i32 128, i32 129, i32 130, i32 132], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"Sl\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@CHASSIS_LUA_REGISTRY_KEY = common dso_local global i32 0, align 4
@G_DIR_SEPARATOR = common dso_local global i8 0, align 1
@G_LOG_DOMAIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"(%s:%d) %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_chassis_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_chassis_log(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @luaL_checkoption(i32* %12, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @lua_chassis_log.log_names, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i8* @luaL_optstring(i32* %14, i32 2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i8* %15, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %59, %1
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @lua_getstack(i32* %17, i32 %18, %struct.TYPE_5__* %10)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %61

22:                                               ; preds = %16
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @lua_getinfo(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_5__* %10)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %61

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %34, %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = icmp slt i32 %42, 11
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 47
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 64
  br label %59

59:                                               ; preds = %53, %47, %44, %40
  %60 = phi i1 [ false, %47 ], [ false, %44 ], [ false, %40 ], [ %58, %53 ]
  br i1 %60, label %16, label %61

61:                                               ; preds = %59, %26, %21
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %118

64:                                               ; preds = %61
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 64
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %5, align 8
  br label %73

73:                                               ; preds = %70, %64
  %74 = load i32*, i32** %2, align 8
  %75 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %76 = load i32, i32* @CHASSIS_LUA_REGISTRY_KEY, align 4
  %77 = call i32 @lua_getfield(i32* %74, i32 %75, i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i64 @lua_topointer(i32* %78, i32 -1)
  %80 = inttoptr i64 %79 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %11, align 8
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @lua_pop(i32* %81, i32 1)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %84 = icmp ne %struct.TYPE_6__* %83, null
  br i1 %84, label %85, label %117

85:                                               ; preds = %73
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %85
  %91 = load i8*, i8** %5, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @g_str_has_prefix(i8* %91, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %116

97:                                               ; preds = %90
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @strlen(i64 %100)
  %102 = load i8*, i8** %5, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %5, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* @G_DIR_SEPARATOR, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %97
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %5, align 8
  br label %115

115:                                              ; preds = %112, %97
  br label %116

116:                                              ; preds = %115, %90
  br label %117

117:                                              ; preds = %116, %85, %73
  br label %118

118:                                              ; preds = %117, %61
  %119 = load i32, i32* @G_LOG_DOMAIN, align 4
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* @lua_chassis_log.log_levels, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %5, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i8*, i8** %5, align 8
  br label %130

128:                                              ; preds = %118
  %129 = load i8*, i8** %6, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i8* [ %127, %126 ], [ %129, %128 ]
  %132 = load i8*, i8** %5, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  br label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %8, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  %140 = load i8*, i8** %4, align 8
  %141 = call i32 @g_log(i32 %119, i32 %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %131, i32 %139, i8* %140)
  ret i32 0
}

declare dso_local i32 @luaL_checkoption(i32*, i32, i8*, i8**) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @lua_getstack(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i32) #1

declare dso_local i64 @lua_topointer(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @g_str_has_prefix(i8*, i64) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @g_log(i32, i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
