; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_NeedsDistributedPlanning.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_distributed_planner.c_NeedsDistributedPlanning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@CMD_SELECT = common dso_local global i64 0, align 8
@CMD_INSERT = common dso_local global i64 0, align 8
@CMD_UPDATE = common dso_local global i64 0, align 8
@CMD_DELETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NeedsDistributedPlanning(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load i32*, i32** @NIL, align 8
  store i32* %6, i32** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = call i32 (...) @CitusHasBeenLoaded()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @CMD_SELECT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @CMD_INSERT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @CMD_UPDATE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @CMD_DELETE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %36

30:                                               ; preds = %25, %21, %17, %13
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = bitcast %struct.TYPE_3__* %31 to i32*
  %33 = call i32 @ExtractRangeTableEntryWalker(i32* %32, i32** %4)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @ListContainsDistributedTableRTE(i32* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %29, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @CitusHasBeenLoaded(...) #1

declare dso_local i32 @ExtractRangeTableEntryWalker(i32*, i32**) #1

declare dso_local i32 @ListContainsDistributedTableRTE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
