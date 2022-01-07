; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lfs.c_file_info.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lfs.c_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 (i32*, %struct.stat*)* }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"cannot obtain information from file `%s'\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"blksize\00", align 1
@members = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_info(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @luaL_checkstring(i32* %9, i32 1)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @stat(i8* %11, %struct.stat* %5)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_pushnil(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @lua_pushfstring(i32* %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 2, i32* %2, align 4
  br label %114

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @lua_isstring(i32* %21, i32 2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i8* @lua_tostring(i32* %25, i32 2)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %65

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 12, i32* %7, align 4
  br label %64

36:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %60, %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @members, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %63

45:                                               ; preds = %37
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @members, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8*, i8** %8, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %63

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %37

63:                                               ; preds = %58, %37
  br label %64

64:                                               ; preds = %63, %35
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @members, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (i32*, %struct.stat*)*, i32 (i32*, %struct.stat*)** %70, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 %71(i32* %72, %struct.stat* %5)
  store i32 1, i32* %2, align 4
  br label %114

74:                                               ; preds = %20
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @lua_istable(i32* %75, i32 2)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @lua_newtable(i32* %79)
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %110, %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @members, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %113

91:                                               ; preds = %83
  %92 = load i32*, i32** %3, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @members, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @lua_pushstring(i32* %92, i8* %98)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @members, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32 (i32*, %struct.stat*)*, i32 (i32*, %struct.stat*)** %104, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 %105(i32* %106, %struct.stat* %5)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @lua_rawset(i32* %108, i32 -3)
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %83

113:                                              ; preds = %83
  store i32 1, i32* %2, align 4
  br label %114

114:                                              ; preds = %113, %65, %14
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
