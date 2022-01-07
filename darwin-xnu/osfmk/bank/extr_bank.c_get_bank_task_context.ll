; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_get_bank_task_context.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/bank/extr_bank.c_get_bank_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32 }

@BANK_TASK_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_11__*, i32)* @get_bank_task_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @get_bank_task_context(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %3, align 8
  br label %73

24:                                               ; preds = %11
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = call %struct.TYPE_12__* @bank_task_alloc_init(%struct.TYPE_11__* %25)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %6, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = call i32 @task_lock(%struct.TYPE_11__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %24
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = call i32 @task_unlock(%struct.TYPE_11__* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @BANK_TASK_NULL, align 8
  %38 = icmp ne %struct.TYPE_12__* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = call i32 @bank_task_dealloc(%struct.TYPE_12__* %40, i32 1)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %3, align 8
  br label %73

46:                                               ; preds = %24
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** @BANK_TASK_NULL, align 8
  %49 = icmp eq %struct.TYPE_12__* %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = call i32 @task_unlock(%struct.TYPE_11__* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @BANK_TASK_NULL, align 8
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %3, align 8
  br label %73

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ledger_reference(i32 %63)
  %65 = call i32 (...) @global_bank_task_lock()
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %68, align 8
  %69 = call i32 (...) @global_bank_task_unlock()
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = call i32 @task_unlock(%struct.TYPE_11__* %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %3, align 8
  br label %73

73:                                               ; preds = %55, %50, %42, %14
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %74
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @bank_task_alloc_init(%struct.TYPE_11__*) #1

declare dso_local i32 @task_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @bank_task_dealloc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ledger_reference(i32) #1

declare dso_local i32 @global_bank_task_lock(...) #1

declare dso_local i32 @global_bank_task_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
