; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_createModule.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_createModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, void (i8*)*, i8*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32*, i8*, void (i8*)*)* @createModule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createModule(%struct.TYPE_8__* %0, i8* %1, i32* %2, i8* %3, void (i8*)* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store void (i8*)* %4, void (i8*)** %10, align 8
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sqlite3_mutex_enter(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @sqlite3Strlen30(i8* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @sqlite3HashFind(i32* %24, i8* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %30, i32* %11, align 4
  br label %91

31:                                               ; preds = %5
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 32, %34
  %36 = add i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = call i64 @sqlite3DbMallocRaw(%struct.TYPE_8__* %32, i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %13, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %90

42:                                               ; preds = %31
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 1
  %45 = bitcast %struct.TYPE_9__* %44 to i8*
  store i8* %45, i8** %15, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @memcpy(i8* %46, i8* %47, i32 %49)
  %51 = load i8*, i8** %15, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load void (i8*)*, void (i8*)** %10, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store void (i8*)* %60, void (i8*)** %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = bitcast %struct.TYPE_9__* %67 to i8*
  %69 = call i64 @sqlite3HashInsert(i32* %64, i8* %65, i32 %66, i8* %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %14, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %72 = icmp eq %struct.TYPE_9__* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %42
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = icmp eq %struct.TYPE_9__* %74, %75
  br label %77

77:                                               ; preds = %73, %42
  %78 = phi i1 [ true, %42 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %82 = icmp ne %struct.TYPE_9__* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %88 = call i32 @sqlite3DbFree(%struct.TYPE_8__* %86, %struct.TYPE_9__* %87)
  br label %89

89:                                               ; preds = %83, %77
  br label %90

90:                                               ; preds = %89, %31
  br label %91

91:                                               ; preds = %90, %29
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @sqlite3ApiExit(%struct.TYPE_8__* %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @SQLITE_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load void (i8*)*, void (i8*)** %10, align 8
  %100 = icmp ne void (i8*)* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load void (i8*)*, void (i8*)** %10, align 8
  %103 = load i8*, i8** %9, align 8
  call void %102(i8* %103)
  br label %104

104:                                              ; preds = %101, %98, %91
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sqlite3_mutex_leave(i32 %107)
  %109 = load i32, i32* %11, align 4
  ret i32 %109
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i64 @sqlite3HashFind(i32*, i8*, i32) #1

declare dso_local i64 @sqlite3DbMallocRaw(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3HashInsert(i32*, i8*, i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
