; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_luac.c_pmain.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_luac.c_pmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Smain = type { i32, i8** }

@.str = private unnamed_addr constant [21 x i8] c"too many input files\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@listing = common dso_local global i32 0, align 4
@dumping = common dso_local global i64 0, align 8
@output = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@writer = common dso_local global i32 0, align 4
@stripping = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmain(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.Smain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @lua_touserdata(i32* %10, i32 1)
  %12 = inttoptr i64 %11 to %struct.Smain*
  store %struct.Smain* %12, %struct.Smain** %3, align 8
  %13 = load %struct.Smain*, %struct.Smain** %3, align 8
  %14 = getelementptr inbounds %struct.Smain, %struct.Smain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.Smain*, %struct.Smain** %3, align 8
  %17 = getelementptr inbounds %struct.Smain, %struct.Smain* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %5, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lua_checkstack(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = call i64 @IS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %40

34:                                               ; preds = %30
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  br label %40

40:                                               ; preds = %34, %33
  %41 = phi i8* [ null, %33 ], [ %39, %34 ]
  store i8* %41, i8** %8, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @luaL_loadfile(i32* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32*, i32** %2, align 8
  %48 = call i8* @lua_tostring(i32* %47, i32 -1)
  %49 = call i32 @fatal(i8* %48)
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32* @combine(i32* %55, i32 %56)
  store i32* %57, i32** %6, align 8
  %58 = load i32, i32* @listing, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @listing, align 4
  %63 = icmp sgt i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = call i32 @luaU_print(i32* %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %54
  %67 = load i64, i64* @dumping, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %66
  %70 = load i32*, i32** @output, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32*, i32** @stdout, align 8
  br label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** @output, align 8
  %76 = call i32* @fopen(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32* [ %73, %72 ], [ %76, %74 ]
  store i32* %78, i32** %9, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @cannot(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @lua_lock(i32* %84)
  %86 = load i32*, i32** %2, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @writer, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* @stripping, align 4
  %91 = call i32 @luaU_dump(i32* %86, i32* %87, i32 %88, i32* %89, i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @lua_unlock(i32* %92)
  %94 = load i32*, i32** %9, align 8
  %95 = call i64 @ferror(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = call i32 @cannot(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %83
  %100 = load i32*, i32** %9, align 8
  %101 = call i64 @fclose(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = call i32 @cannot(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %99
  br label %106

106:                                              ; preds = %105, %66
  ret i32 0
}

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_checkstack(i32*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @IS(i8*) #1

declare dso_local i64 @luaL_loadfile(i32*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32* @combine(i32*, i32) #1

declare dso_local i32 @luaU_print(i32*, i32) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @cannot(i8*) #1

declare dso_local i32 @lua_lock(i32*) #1

declare dso_local i32 @luaU_dump(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @lua_unlock(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
