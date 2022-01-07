; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_PoolingNat.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_PoolingNat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PoolingNat(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = icmp eq %struct.TYPE_14__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %54

8:                                                ; preds = %1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = call i64 @NnIsActive(%struct.TYPE_14__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @NnPoll(i32 %15)
  br label %17

17:                                               ; preds = %12, %8
  store i64 0, i64* %3, align 8
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @LIST_NUM(i32 %22)
  %24 = icmp slt i64 %19, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %18
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %3, align 8
  %30 = call %struct.TYPE_15__* @LIST_DATA(i32 %28, i64 %29)
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %4, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %50 [
    i32 129, label %34
    i32 128, label %38
    i32 130, label %42
    i32 131, label %46
  ]

34:                                               ; preds = %25
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = call i32 @PollingNatTcp(%struct.TYPE_14__* %35, %struct.TYPE_15__* %36)
  br label %50

38:                                               ; preds = %25
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = call i32 @PoolingNatUdp(%struct.TYPE_14__* %39, %struct.TYPE_15__* %40)
  br label %50

42:                                               ; preds = %25
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = call i32 @PollingNatIcmp(%struct.TYPE_14__* %43, %struct.TYPE_15__* %44)
  br label %50

46:                                               ; preds = %25
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = call i32 @PollingNatDns(%struct.TYPE_14__* %47, %struct.TYPE_15__* %48)
  br label %50

50:                                               ; preds = %25, %46, %42, %38, %34
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %3, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %18

54:                                               ; preds = %7, %18
  ret void
}

declare dso_local i64 @NnIsActive(%struct.TYPE_14__*) #1

declare dso_local i32 @NnPoll(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_15__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @PollingNatTcp(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @PoolingNatUdp(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @PollingNatIcmp(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @PollingNatDns(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
