; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNdisHaltEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoNdisHaltEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i32*, i64 }

@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NeoNdisHaltEx(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %77

10:                                               ; preds = %2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FALSE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %77

17:                                               ; preds = %10
  %18 = load i64, i64* @TRUE, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 8
  store i64 %21, i64* %23, align 8
  %24 = call i32 (...) @NeoLockPacketQueue()
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 7
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %5, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 7
  store i32* null, i32** %29, align 8
  %30 = call i32 @NeoClearPacketQueue(i32 1)
  %31 = call i32 (...) @NeoUnlockPacketQueue()
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @NeoSet(i32* %35)
  br label %37

37:                                               ; preds = %34, %17
  br label %38

38:                                               ; preds = %50, %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = call i32 @NdisMSleep(i32 10000)
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %47, 1500
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  br label %38

51:                                               ; preds = %49, %38
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @NeoFreeEvent(i32* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = call i32 (...) @NeoFreeControlDevice()
  %59 = call i32 (...) @NeoStopAdapter()
  %60 = call i32 (...) @NeoFreePacketArray()
  %61 = load i64, i64* @FALSE, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 6
  store i64 %61, i64* %65, align 8
  %66 = load i64, i64* @FALSE, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  store i64 %66, i64* %70, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i64 %66, i64* %72, align 8
  %73 = load i64, i64* @FALSE, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = call i32 (...) @NeoShutdown()
  br label %77

77:                                               ; preds = %57, %16, %9
  ret void
}

declare dso_local i32 @NeoLockPacketQueue(...) #1

declare dso_local i32 @NeoClearPacketQueue(i32) #1

declare dso_local i32 @NeoUnlockPacketQueue(...) #1

declare dso_local i32 @NeoSet(i32*) #1

declare dso_local i32 @NdisMSleep(i32) #1

declare dso_local i32 @NeoFreeEvent(i32*) #1

declare dso_local i32 @NeoFreeControlDevice(...) #1

declare dso_local i32 @NeoStopAdapter(...) #1

declare dso_local i32 @NeoFreePacketArray(...) #1

declare dso_local i32 @NeoShutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
