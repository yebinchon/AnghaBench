; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_convert_port_to_locked_task_inspect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_convert_port_to_locked_task_inspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@IKOT_TASK = common dso_local global i64 0, align 8
@TASK_INSPECT_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_port_to_locked_task_inspect(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = call i64 @IP_VALID(%struct.TYPE_8__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %6
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = call i32 @ip_lock(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = call i32 @ip_active(%struct.TYPE_8__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = call i64 @ip_kotype(%struct.TYPE_8__* %17)
  %19 = load i64, i64* @IKOT_TASK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %10
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i32 @ip_unlock(%struct.TYPE_8__* %22)
  %24 = load i64, i64* @TASK_INSPECT_NULL, align 8
  store i64 %24, i64* %2, align 8
  br label %51

25:                                               ; preds = %16
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @TASK_INSPECT_NULL, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @task_lock_try(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = call i32 @ip_unlock(%struct.TYPE_8__* %39)
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %2, align 8
  br label %51

42:                                               ; preds = %25
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = call i32 @ip_unlock(%struct.TYPE_8__* %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @mutex_pause(i32 %47)
  br label %6

49:                                               ; preds = %6
  %50 = load i64, i64* @TASK_INSPECT_NULL, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %38, %21
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @IP_VALID(%struct.TYPE_8__*) #1

declare dso_local i32 @ip_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_8__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_8__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @task_lock_try(i32) #1

declare dso_local i32 @mutex_pause(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
