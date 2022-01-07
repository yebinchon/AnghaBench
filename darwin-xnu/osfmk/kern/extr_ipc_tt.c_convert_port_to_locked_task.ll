; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_convert_port_to_locked_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_convert_port_to_locked_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@IKOT_TASK = common dso_local global i64 0, align 8
@TASK_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_port_to_locked_task(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i64 @IP_VALID(%struct.TYPE_8__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %7
  %12 = call i64 (...) @current_task()
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = call i32 @ip_lock(%struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = call i32 @ip_active(%struct.TYPE_8__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = call i64 @ip_kotype(%struct.TYPE_8__* %19)
  %21 = load i64, i64* @IKOT_TASK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %11
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = call i32 @ip_unlock(%struct.TYPE_8__* %24)
  %26 = load i64, i64* @TASK_NULL, align 8
  store i64 %26, i64* %2, align 8
  br label %61

27:                                               ; preds = %18
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @TASK_NULL, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @task_conversion_eval(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = call i32 @ip_unlock(%struct.TYPE_8__* %41)
  %43 = load i64, i64* @TASK_NULL, align 8
  store i64 %43, i64* %2, align 8
  br label %61

44:                                               ; preds = %27
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @task_lock_try(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = call i32 @ip_unlock(%struct.TYPE_8__* %49)
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %2, align 8
  br label %61

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = call i32 @ip_unlock(%struct.TYPE_8__* %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @mutex_pause(i32 %57)
  br label %7

59:                                               ; preds = %7
  %60 = load i64, i64* @TASK_NULL, align 8
  store i64 %60, i64* %2, align 8
  br label %61

61:                                               ; preds = %59, %48, %40, %23
  %62 = load i64, i64* %2, align 8
  ret i64 %62
}

declare dso_local i64 @IP_VALID(%struct.TYPE_8__*) #1

declare dso_local i64 @current_task(...) #1

declare dso_local i32 @ip_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_8__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_8__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @task_conversion_eval(i64, i64) #1

declare dso_local i64 @task_lock_try(i64) #1

declare dso_local i32 @mutex_pause(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
