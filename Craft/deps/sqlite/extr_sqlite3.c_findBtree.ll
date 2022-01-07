; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_findBtree.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_findBtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_16__ = type { i32, i8*, %struct.TYPE_15__* }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unknown database %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, %struct.TYPE_15__*, i8*)* @findBtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @findBtree(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @sqlite3FindDbName(%struct.TYPE_15__* %11, i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %57

16:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = call %struct.TYPE_16__* @sqlite3StackAllocZero(%struct.TYPE_15__* %17, i32 24)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %9, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %20 = icmp eq %struct.TYPE_16__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = load i32, i32* @SQLITE_NOMEM, align 4
  %24 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @sqlite3Error(%struct.TYPE_15__* %22, i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %25, i32* %10, align 4
  br label %52

26:                                               ; preds = %16
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = call i64 @sqlite3OpenTempDatabase(%struct.TYPE_16__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @sqlite3Error(%struct.TYPE_15__* %34, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %33, %26
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @sqlite3DbFree(%struct.TYPE_15__* %44, i8* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %51 = call i32 @sqlite3StackFree(%struct.TYPE_15__* %49, %struct.TYPE_16__* %50)
  br label %52

52:                                               ; preds = %43, %21
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32* null, i32** %4, align 8
  br label %74

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %3
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = load i32, i32* @SQLITE_ERROR, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @sqlite3Error(%struct.TYPE_15__* %61, i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  store i32* null, i32** %4, align 8
  br label %74

65:                                               ; preds = %57
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %4, align 8
  br label %74

74:                                               ; preds = %65, %60, %55
  %75 = load i32*, i32** %4, align 8
  ret i32* %75
}

declare dso_local i32 @sqlite3FindDbName(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_16__* @sqlite3StackAllocZero(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i64 @sqlite3OpenTempDatabase(%struct.TYPE_16__*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @sqlite3StackFree(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
