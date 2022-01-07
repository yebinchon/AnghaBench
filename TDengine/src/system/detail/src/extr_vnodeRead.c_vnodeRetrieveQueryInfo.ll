; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeRetrieveQueryInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeRead.c_vnodeRetrieveQueryInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_13__*, i32, i64, i32, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32* }

@TSDB_CODE_INVALID_QHANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"QInfo:%p %p retrieve memory is corrupted!!! QInfo:%p, sign:%p, sdata:%p\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"QInfo:%p it is already killed, %p, code:%d\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@TSDB_CODE_QUERY_CANCELLED = common dso_local global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeRetrieveQueryInfo(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %8, align 8
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %10, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %17 = icmp eq %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @TSDB_CODE_INVALID_QHANDLE, align 4
  store i32 %19, i32* %5, align 4
  br label %104

20:                                               ; preds = %4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 7
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %11, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %24 = call i32 @vnodeIsQInfoValid(%struct.TYPE_15__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %26, %20
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dError(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %32, %struct.TYPE_14__* %33, %struct.TYPE_15__* %34, i32 %37, i32* %40)
  %42 = load i32, i32* @TSDB_CODE_INVALID_QHANDLE, align 4
  store i32 %42, i32* %5, align 4
  br label %104

43:                                               ; preds = %26
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dTrace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %49, %struct.TYPE_14__* %50, i32 %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* @TSDB_CODE_QUERY_CANCELLED, align 4
  store i32 %61, i32* %5, align 4
  br label %104

62:                                               ; preds = %48
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %5, align 4
  br label %104

66:                                               ; preds = %43
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 4
  %69 = call i32 @sem_wait(i32* %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %72, %75
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** @vnodeList, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %66
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %104

102:                                              ; preds = %66
  %103 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %97, %62, %60, %31, %18
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @vnodeIsQInfoValid(%struct.TYPE_15__*) #1

declare dso_local i32 @dError(i8*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @sem_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
