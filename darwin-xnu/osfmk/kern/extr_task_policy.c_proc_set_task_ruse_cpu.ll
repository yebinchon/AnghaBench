; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_set_task_ruse_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_set_task_ruse_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@TASK_RUSECPU_FLAGS_PROC_LIMIT = common dso_local global i32 0, align 4
@TASK_RUSECPU_FLAGS_DEADLINE = common dso_local global i32 0, align 4
@TASK_RUSECPU_FLAGS_PERTHR_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_set_task_ruse_cpu(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %38 [
    i32 133, label %17
    i32 128, label %17
    i32 130, label %24
    i32 129, label %24
    i32 131, label %24
    i32 132, label %31
  ]

17:                                               ; preds = %6, %6
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @ENOTSUP, align 4
  store i32 %21, i32* %7, align 4
  br label %65

22:                                               ; preds = %17
  %23 = load i32, i32* @TASK_RUSECPU_FLAGS_PROC_LIMIT, align 4
  store i32 %23, i32* %15, align 4
  br label %40

24:                                               ; preds = %6, %6, %6
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @ENOTSUP, align 4
  store i32 %28, i32* %7, align 4
  br label %65

29:                                               ; preds = %24
  %30 = load i32, i32* @TASK_RUSECPU_FLAGS_DEADLINE, align 4
  store i32 %30, i32* %15, align 4
  br label %40

31:                                               ; preds = %6
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @ENOTSUP, align 4
  store i32 %35, i32* %7, align 4
  br label %65

36:                                               ; preds = %31
  %37 = load i32, i32* @TASK_RUSECPU_FLAGS_PERTHR_LIMIT, align 4
  store i32 %37, i32* %15, align 4
  br label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %7, align 4
  br label %65

40:                                               ; preds = %36, %29, %22
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = call i32 @task_lock(%struct.TYPE_7__* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = call %struct.TYPE_7__* (...) @current_task()
  %45 = icmp ne %struct.TYPE_7__* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @task_set_cpuusage(%struct.TYPE_7__* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = call i32 @task_unlock(%struct.TYPE_7__* %62)
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %54, %38, %34, %27, %20
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @task_lock(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @current_task(...) #1

declare dso_local i32 @task_set_cpuusage(%struct.TYPE_7__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
