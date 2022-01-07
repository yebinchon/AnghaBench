; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ExecutionOrderForTask.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ExecutionOrderForTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EXECUTION_ORDER_ANY = common dso_local global i32 0, align 4
@ROW_MODIFY_NONCOMMUTATIVE = common dso_local global i32 0, align 4
@EXECUTION_ORDER_SEQUENTIAL = common dso_local global i32 0, align 4
@EXECUTION_ORDER_PARALLEL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"unsupported task type %d in adaptive executor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @ExecutionOrderForTask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecutionOrderForTask(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %22 [
    i32 129, label %9
    i32 130, label %9
    i32 131, label %11
    i32 136, label %19
    i32 128, label %19
    i32 134, label %21
    i32 132, label %21
    i32 135, label %21
    i32 133, label %21
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* @EXECUTION_ORDER_ANY, align 4
  store i32 %10, i32* %3, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ROW_MODIFY_NONCOMMUTATIVE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @EXECUTION_ORDER_SEQUENTIAL, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %11
  %18 = load i32, i32* @EXECUTION_ORDER_PARALLEL, align 4
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %2, %2
  %20 = load i32, i32* @EXECUTION_ORDER_PARALLEL, align 4
  store i32 %20, i32* %3, align 4
  br label %29

21:                                               ; preds = %2, %2, %2, %2
  br label %22

22:                                               ; preds = %2, %21
  %23 = load i32, i32* @ERROR, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = call i32 @ereport(i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %9, %15, %17, %19, %22
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
