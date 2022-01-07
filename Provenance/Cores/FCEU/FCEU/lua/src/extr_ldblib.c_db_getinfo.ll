; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldblib.c_db_getinfo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldblib.c_db_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"flnSu\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"function or level expected\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"short_src\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"linedefined\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"lastlinedefined\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"currentline\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"nups\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"namewhat\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"activelines\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_getinfo(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @getthread(i32* %8, i32* %5)
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 2
  %13 = call i8* @luaL_optstring(i32* %10, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i64 @lua_isnumber(i32* %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i64 @lua_tointeger(i32* %21, i32 %23)
  %25 = trunc i64 %24 to i32
  %26 = call i32 @lua_getstack(i32* %20, i32 %25, %struct.TYPE_4__* %4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pushnil(i32* %29)
  store i32 1, i32* %2, align 4
  br label %142

31:                                               ; preds = %19
  br label %57

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i64 @lua_isfunction(i32* %33, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @lua_pushfstring(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32*, i32** %3, align 8
  %43 = call i8* @lua_tostring(i32* %42, i32 -1)
  store i8* %43, i8** %7, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @lua_pushvalue(i32* %44, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @lua_xmove(i32* %48, i32* %49, i32 1)
  br label %56

51:                                               ; preds = %32
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @luaL_argerror(i32* %52, i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %2, align 4
  br label %142

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32*, i32** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @lua_getinfo(i32* %58, i8* %59, %struct.TYPE_4__* %4)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 2
  %66 = call i32 @luaL_argerror(i32* %63, i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %66, i32* %2, align 4
  br label %142

67:                                               ; preds = %57
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @lua_createtable(i32* %68, i32 0, i32 2)
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @strchr(i8* %70, float 8.300000e+01)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %67
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @settabss(i32* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @settabss(i32* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @settabsi(i32* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @settabsi(i32* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @settabss(i32* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %73, %67
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 @strchr(i8* %95, float 1.080000e+02)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @settabsi(i32* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @strchr(i8* %104, float 1.170000e+02)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32*, i32** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @settabsi(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %103
  %113 = load i8*, i8** %7, align 8
  %114 = call i64 @strchr(i8* %113, float 1.100000e+02)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @settabss(i32* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @settabss(i32* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %116, %112
  %126 = load i8*, i8** %7, align 8
  %127 = call i64 @strchr(i8* %126, float 7.600000e+01)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32*, i32** %3, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @treatstackoption(i32* %130, i32* %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i8*, i8** %7, align 8
  %135 = call i64 @strchr(i8* %134, float 1.020000e+02)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32*, i32** %3, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @treatstackoption(i32* %138, i32* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %133
  store i32 1, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %62, %51, %28
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32* @getthread(i32*, i32*) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i64 @lua_isnumber(i32*, i32) #1

declare dso_local i32 @lua_getstack(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i64 @strchr(i8*, float) #1

declare dso_local i32 @settabss(i32*, i8*, i32) #1

declare dso_local i32 @settabsi(i32*, i8*, i32) #1

declare dso_local i32 @treatstackoption(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
