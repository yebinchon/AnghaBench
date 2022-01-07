; ModuleID = '/home/carl/AnghaBench/disque/src/extr_latency.c_latencyCommandReplyWithSamples.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_latency.c_latencyCommandReplyWithSamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.latencyTimeSeries = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@LATENCY_TS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @latencyCommandReplyWithSamples(i32* %0, %struct.latencyTimeSeries* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.latencyTimeSeries*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.latencyTimeSeries* %1, %struct.latencyTimeSeries** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @addDeferredMultiBulkLength(i32* %9)
  store i8* %10, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %58, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @LATENCY_TS_LEN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %17 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @LATENCY_TS_LEN, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %24 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %58

33:                                               ; preds = %15
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @addReplyMultiBulkLen(i32* %34, i32 2)
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %38 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @addReplyLongLong(i32* %36, i64 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %4, align 8
  %48 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @addReplyLongLong(i32* %46, i64 %54)
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %33, %32
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %11

61:                                               ; preds = %11
  %62 = load i32*, i32** %3, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @setDeferredMultiBulkLength(i32* %62, i8* %63, i32 %64)
  ret void
}

declare dso_local i8* @addDeferredMultiBulkLength(i32*) #1

declare dso_local i32 @addReplyMultiBulkLen(i32*, i32) #1

declare dso_local i32 @addReplyLongLong(i32*, i64) #1

declare dso_local i32 @setDeferredMultiBulkLength(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
