; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_conversion_eval.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_conversion_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@kernel_task = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_INVALID_SECURITY = common dso_local global i32 0, align 4
@TF_PLATFORM = common dso_local global i32 0, align 4
@cs_relax_platform_task_ports = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_conversion_eval(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_task, align 8
  %8 = icmp eq %struct.TYPE_6__* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %10, i32* %3, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = icmp eq %struct.TYPE_6__* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TASK_NULL, align 8
  %20 = icmp eq %struct.TYPE_6__* %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @kernel_task, align 8
  %24 = icmp eq %struct.TYPE_6__* %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @KERN_INVALID_SECURITY, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25, %15, %9
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
