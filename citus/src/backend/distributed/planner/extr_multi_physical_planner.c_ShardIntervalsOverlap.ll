; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_ShardIntervalsOverlap.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_physical_planner.c_ShardIntervalsOverlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShardIntervalsOverlap(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_7__* @DistributedTableCacheEntry(i32 %18)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @CompareCall2(i32* %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @CompareCall2(i32* %59, i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @DatumGetInt32(i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @DatumGetInt32(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %54
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %69
  br label %74

74:                                               ; preds = %73, %49, %44, %39, %2
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  ret i32 %78
}

declare dso_local %struct.TYPE_7__* @DistributedTableCacheEntry(i32) #1

declare dso_local i32 @CompareCall2(i32*, i32, i32) #1

declare dso_local i32 @DatumGetInt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
