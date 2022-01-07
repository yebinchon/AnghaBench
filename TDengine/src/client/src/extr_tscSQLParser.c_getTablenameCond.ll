; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getTablenameCond.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_getTablenameCond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [24 x i8] c"invalid table name list\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TK_IN = common dso_local global i64 0, align 8
@TK_LIKE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*, i8*)* @getTablenameCond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getTablenameCond(i32* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %15, i64* %4, align 8
  br label %61

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %10, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i32 @isTablenameToken(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  %28 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %28, i64* %4, align 8
  br label %61

29:                                               ; preds = %16
  %30 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TK_IN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @tablenameListToString(%struct.TYPE_5__* %37, i8* %38)
  store i64 %39, i64* %11, align 8
  br label %51

40:                                               ; preds = %29
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TK_LIKE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @tablenameCondToString(%struct.TYPE_5__* %47, i8* %48)
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @setErrMsg(i32* %56, i8* %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %27, %14
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @isTablenameToken(i32*) #1

declare dso_local i64 @tablenameListToString(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @tablenameCondToString(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @setErrMsg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
