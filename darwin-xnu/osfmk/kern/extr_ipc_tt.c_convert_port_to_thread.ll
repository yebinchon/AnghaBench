; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_convert_port_to_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_convert_port_to_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@THREAD_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@IKOT_THREAD = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @convert_port_to_thread(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %4, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %7 = call i64 @IP_VALID(%struct.TYPE_13__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = call i32 @ip_lock(%struct.TYPE_13__* %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = call i64 @ip_active(%struct.TYPE_13__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %9
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = call i64 @ip_kotype(%struct.TYPE_13__* %16)
  %18 = load i64, i64* @IKOT_THREAD, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %4, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  %27 = icmp ne %struct.TYPE_12__* %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i32 (...) @current_task()
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @task_conversion_eval(i32 %30, i32 %33)
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %20
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = call i32 @ip_unlock(%struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %2, align 8
  br label %49

41:                                               ; preds = %20
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = call i32 @thread_reference_internal(%struct.TYPE_12__* %42)
  br label %44

44:                                               ; preds = %41, %15, %9
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = call i32 @ip_unlock(%struct.TYPE_13__* %45)
  br label %47

47:                                               ; preds = %44, %1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %2, align 8
  br label %49

49:                                               ; preds = %47, %37
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %50
}

declare dso_local i64 @IP_VALID(%struct.TYPE_13__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_13__*) #1

declare dso_local i64 @ip_active(%struct.TYPE_13__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_13__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @task_conversion_eval(i32, i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @thread_reference_internal(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
