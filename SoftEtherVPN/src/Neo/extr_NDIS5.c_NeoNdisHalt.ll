; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNdisHalt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoNdisHalt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@NDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NeoNdisHalt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %5 = icmp eq %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %7, i32* %2, align 4
  br label %40

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FALSE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %15, i32* %2, align 4
  br label %40

16:                                               ; preds = %8
  %17 = load i64, i64* @TRUE, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = call i32 (...) @NeoStopAdapter()
  %21 = call i32 (...) @NeoFreePacketArray()
  %22 = call i32 (...) @NeoFreeControlDevice()
  %23 = load i64, i64* @FALSE, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store i64 %23, i64* %27, align 8
  %28 = load i64, i64* @FALSE, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i64 %28, i64* %32, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i64 %28, i64* %34, align 8
  %35 = load i64, i64* @FALSE, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = call i32 (...) @NeoShutdown()
  %39 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %16, %14, %6
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @NeoStopAdapter(...) #1

declare dso_local i32 @NeoFreePacketArray(...) #1

declare dso_local i32 @NeoFreeControlDevice(...) #1

declare dso_local i32 @NeoShutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
