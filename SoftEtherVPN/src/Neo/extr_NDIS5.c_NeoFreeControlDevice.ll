; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoFreeControlDevice.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo/extr_NDIS5.c_NeoFreeControlDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32* }

@ctx = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NeoFreeControlDevice() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %2 = icmp eq %struct.TYPE_2__* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %29

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @FALSE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @NeoSet(i32* %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @NeoFreeEvent(i32* %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load i64, i64* @FALSE, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %10, %4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ctx, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @NdisMDeregisterDevice(i32 %27)
  br label %29

29:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @NeoSet(i32*) #1

declare dso_local i32 @NeoFreeEvent(i32*) #1

declare dso_local i32 @NdisMDeregisterDevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
