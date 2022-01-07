; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscLocalResultCommonBuilder.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscLocalResultCommonBuilder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 (i32, %struct.TYPE_9__*, i32)*, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }

@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @tscLocalResultCommonBuilder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscLocalResultCommonBuilder(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  store i32* %11, i32** %6, align 8
  %12 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = call i32 @tscSetResultPointer(i32* %27, %struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  br label %35

32:                                               ; preds = %2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = call i32 @tscResetForNextRetrieve(%struct.TYPE_8__* %33)
  br label %35

35:                                               ; preds = %32, %19
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i32 (i32, %struct.TYPE_9__*, i32)*, i32 (i32, %struct.TYPE_9__*, i32)** %41, align 8
  %43 = icmp ne i32 (i32, %struct.TYPE_9__*, i32)* %42, null
  br i1 %43, label %44, label %65

44:                                               ; preds = %35
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = load i32 (i32, %struct.TYPE_9__*, i32)*, i32 (i32, %struct.TYPE_9__*, i32)** %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 %51(i32 %54, %struct.TYPE_9__* %55, i32 %59)
  br label %64

61:                                               ; preds = %44
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i32 @tscQueueAsyncRes(%struct.TYPE_9__* %62)
  br label %64

64:                                               ; preds = %61, %48
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  ret i32 %67
}

declare dso_local i32 @tscSetResultPointer(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @tscResetForNextRetrieve(%struct.TYPE_8__*) #1

declare dso_local i32 @tscQueueAsyncRes(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
