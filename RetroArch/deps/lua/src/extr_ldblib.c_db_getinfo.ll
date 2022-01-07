; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldblib.c_db_getinfo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldblib.c_db_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"flnStu\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"short_src\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"linedefined\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"lastlinedefined\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"currentline\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"nups\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"nparams\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"isvararg\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"namewhat\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"istailcall\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"activelines\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"func\00", align 1
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
  %13 = call i8* @luaL_optstring(i32* %10, i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @checkstack(i32* %14, i32* %15, i32 3)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i64 @lua_isfunction(i32* %17, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @lua_pushfstring(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @lua_pushvalue(i32* %26, i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @lua_xmove(i32* %30, i32* %31, i32 1)
  br label %46

33:                                               ; preds = %1
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i64 @luaL_checkinteger(i32* %35, i32 %37)
  %39 = trunc i64 %38 to i32
  %40 = call i32 @lua_getstack(i32* %34, i32 %39, %struct.TYPE_4__* %4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @lua_pushnil(i32* %43)
  store i32 1, i32* %2, align 4
  br label %148

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %22
  %47 = load i32*, i32** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @lua_getinfo(i32* %47, i8* %48, %struct.TYPE_4__* %4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 2
  %55 = call i32 @luaL_argerror(i32* %52, i32 %54, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %2, align 4
  br label %148

56:                                               ; preds = %46
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_newtable(i32* %57)
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strchr(i8* %59, float 8.300000e+01)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 11
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @settabss(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @settabss(i32* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @settabsi(i32* %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @settabsi(i32* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @settabss(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %62, %56
  %84 = load i8*, i8** %7, align 8
  %85 = call i64 @strchr(i8* %84, float 1.080000e+02)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32*, i32** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @settabsi(i32* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i8*, i8** %7, align 8
  %94 = call i64 @strchr(i8* %93, float 1.170000e+02)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32*, i32** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @settabsi(i32* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @settabsi(i32* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @settabsb(i32* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %96, %92
  %110 = load i8*, i8** %7, align 8
  %111 = call i64 @strchr(i8* %110, float 1.100000e+02)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load i32*, i32** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @settabss(i32* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @settabss(i32* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %113, %109
  %123 = load i8*, i8** %7, align 8
  %124 = call i64 @strchr(i8* %123, float 1.160000e+02)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @settabsb(i32* %127, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %126, %122
  %132 = load i8*, i8** %7, align 8
  %133 = call i64 @strchr(i8* %132, float 7.600000e+01)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32*, i32** %3, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @treatstackoption(i32* %136, i32* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %139

139:                                              ; preds = %135, %131
  %140 = load i8*, i8** %7, align 8
  %141 = call i64 @strchr(i8* %140, float 1.020000e+02)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32*, i32** %3, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @treatstackoption(i32* %144, i32* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %147

147:                                              ; preds = %143, %139
  store i32 1, i32* %2, align 4
  br label %148

148:                                              ; preds = %147, %51, %42
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32* @getthread(i32*, i32*) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @checkstack(i32*, i32*, i32) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i8* @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @lua_getstack(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_getinfo(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i64 @strchr(i8*, float) #1

declare dso_local i32 @settabss(i32*, i8*, i32) #1

declare dso_local i32 @settabsi(i32*, i8*, i32) #1

declare dso_local i32 @settabsb(i32*, i8*, i32) #1

declare dso_local i32 @treatstackoption(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
