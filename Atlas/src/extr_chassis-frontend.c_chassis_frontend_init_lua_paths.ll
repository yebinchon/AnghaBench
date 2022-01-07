; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_init_lua_paths.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_chassis-frontend.c_chassis_frontend_init_lua_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }

@LUA_PATH = common dso_local global i8* null, align 8
@LUA_CPATH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"%s: setting %s = %s failed: %s\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@LUA_PATHSEP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i64)* @chassis_frontend_init_lua_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chassis_frontend_init_lua_paths(i8* %0, i8* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i8*, i8** @LUA_PATH, align 8
  br label %22

20:                                               ; preds = %4
  %21 = load i8*, i8** @LUA_CPATH, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ]
  store i8* %23, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @chassis_frontend_lua_setenv(i8* %27, i8* %28)
  %30 = icmp ne i64 0, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @G_STRLOC, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @g_strerror(i32 %35)
  %37 = call i32 @g_critical(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %33, i8* %34, i32 %36)
  store i32 -1, i32* %10, align 4
  br label %38

38:                                               ; preds = %31, %26
  br label %132

39:                                               ; preds = %22
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @g_getenv(i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %131, label %43

43:                                               ; preds = %39
  %44 = call %struct.TYPE_6__* @g_string_new(i32* null)
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %11, align 8
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %102, %43
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* %12, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* %13, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i8**, i8*** %7, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i1 [ false, %52 ], [ %60, %55 ]
  br label %63

63:                                               ; preds = %61, %49
  %64 = phi i1 [ true, %49 ], [ %62, %61 ]
  br i1 %64, label %65, label %105

65:                                               ; preds = %63
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %74

69:                                               ; preds = %65
  %70 = load i8**, i8*** %7, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  %73 = load i8*, i8** %72, align 8
  br label %74

74:                                               ; preds = %69, %68
  %75 = phi i8* [ null, %68 ], [ %73, %69 ]
  store i8* %75, i8** %15, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = call i32* @chassis_frontend_get_default_lua_path(i8* %79, i8* %80)
  store i32* %81, i32** %14, align 8
  br label %86

82:                                               ; preds = %74
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = call i32* @chassis_frontend_get_default_lua_cpath(i8* %83, i8* %84)
  store i32* %85, i32** %14, align 8
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = load i32, i32* @LUA_PATHSEP, align 4
  %94 = call i32 @C(i32 %93)
  %95 = call i32 @g_string_append_len(%struct.TYPE_6__* %92, i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @g_string_append(%struct.TYPE_6__* %97, i32* %98)
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @g_free(i32* %100)
  br label %102

102:                                              ; preds = %96
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %46

105:                                              ; preds = %63
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 @chassis_frontend_lua_setenv(i8* %111, i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %110
  %118 = load i32, i32* @G_STRLOC, align 4
  %119 = load i8*, i8** %9, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @errno, align 4
  %124 = call i32 @g_strerror(i32 %123)
  %125 = call i32 @g_critical(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %118, i8* %119, i8* %122, i32 %124)
  store i32 -1, i32* %10, align 4
  br label %126

126:                                              ; preds = %117, %110
  br label %127

127:                                              ; preds = %126, %105
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %129 = load i64, i64* @TRUE, align 8
  %130 = call i32 @g_string_free(%struct.TYPE_6__* %128, i64 %129)
  br label %131

131:                                              ; preds = %127, %39
  br label %132

132:                                              ; preds = %131, %38
  ret i32 0
}

declare dso_local i64 @chassis_frontend_lua_setenv(i8*, i8*) #1

declare dso_local i32 @g_critical(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @g_strerror(i32) #1

declare dso_local i32 @g_getenv(i8*) #1

declare dso_local %struct.TYPE_6__* @g_string_new(i32*) #1

declare dso_local i32* @chassis_frontend_get_default_lua_path(i8*, i8*) #1

declare dso_local i32* @chassis_frontend_get_default_lua_cpath(i8*, i8*) #1

declare dso_local i32 @g_string_append_len(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @C(i32) #1

declare dso_local i32 @g_string_append(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
