; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNdisOnClose.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNdisOnClose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @NeoNdisOnClose(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %3, align 8
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FALSE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %3, align 8
  br label %40

19:                                               ; preds = %11
  %20 = load i64, i64* @FALSE, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = call i32 (...) @NeoLockPacketQueue()
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %6, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = call i32 @NeoClearPacketQueue(i32 1)
  %30 = call i32 (...) @NeoUnlockPacketQueue()
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @NeoFreeEvent(i32* %34)
  br label %36

36:                                               ; preds = %33, %19
  %37 = load i64, i64* @FALSE, align 8
  %38 = call i32 @NeoSetConnectState(i64 %37)
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %36, %17, %9
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i32 @NeoLockPacketQueue(...) #1

declare dso_local i32 @NeoClearPacketQueue(i32) #1

declare dso_local i32 @NeoUnlockPacketQueue(...) #1

declare dso_local i32 @NeoFreeEvent(i32*) #1

declare dso_local i32 @NeoSetConnectState(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
