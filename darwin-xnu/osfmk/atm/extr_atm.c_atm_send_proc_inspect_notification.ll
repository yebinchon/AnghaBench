; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/atm/extr_atm.c_atm_send_proc_inspect_notification.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/atm/extr_atm.c_atm_send_proc_inspect_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }

@MACH_PORT_NULL = common dso_local global i32 0, align 4
@ATM_TASK_DESCRIPTOR_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@disable_atm = common dso_local global i64 0, align 8
@ATM_TRACE_DISABLE = common dso_local global i32 0, align 4
@KERN_NOT_SUPPORTED = common dso_local global i32 0, align 4
@KERN_INVALID_TASK = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@MACH_SEND_TIMED_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atm_send_proc_inspect_notification(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ATM_TASK_DESCRIPTOR_NULL, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = call i32 (...) @current_thread()
  store i32 %18, i32* %14, align 4
  %19 = load i64, i64* @disable_atm, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = call i32 (...) @atm_get_diagnostic_config()
  %23 = load i32, i32* @ATM_TRACE_DISABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %3
  %27 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %27, i32* %4, align 4
  br label %104

28:                                               ; preds = %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @KERN_INVALID_TASK, align 4
  store i32 %32, i32* %4, align 4
  br label %104

33:                                               ; preds = %28
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = call i32 @task_lock(%struct.TYPE_9__* %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %11, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = call i32 @atm_descriptor_get_reference(%struct.TYPE_10__* %44)
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = call i32 @task_unlock(%struct.TYPE_9__* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ATM_TASK_DESCRIPTOR_NULL, align 8
  %51 = icmp eq %struct.TYPE_10__* %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %53, i32* %4, align 4
  br label %104

54:                                               ; preds = %46
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ipc_port_copy_send(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = call i32 @atm_task_descriptor_dealloc(%struct.TYPE_10__* %62)
  %64 = call i32 (...) @host_priv_self()
  %65 = call i32 @host_get_atm_notification_port(i32 %64, i32* %8)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @KERN_SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @IPC_PORT_VALID(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69, %54
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ipc_port_release_send(i32 %74)
  %76 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %76, i32* %4, align 4
  br label %104

77:                                               ; preds = %69
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @thread_set_honor_qlimit(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @atm_inspect_process_buffer(i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @thread_clear_honor_qlimit(i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @KERN_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %77
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @ipc_port_release_send(i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @MACH_SEND_TIMED_OUT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %97, %91
  br label %100

100:                                              ; preds = %99, %77
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @ipc_port_release_send(i32 %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %73, %52, %31, %26
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @atm_get_diagnostic_config(...) #1

declare dso_local i32 @task_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @atm_descriptor_get_reference(%struct.TYPE_10__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @ipc_port_copy_send(i32) #1

declare dso_local i32 @atm_task_descriptor_dealloc(%struct.TYPE_10__*) #1

declare dso_local i32 @host_get_atm_notification_port(i32, i32*) #1

declare dso_local i32 @host_priv_self(...) #1

declare dso_local i32 @IPC_PORT_VALID(i32) #1

declare dso_local i32 @ipc_port_release_send(i32) #1

declare dso_local i32 @thread_set_honor_qlimit(i32) #1

declare dso_local i32 @atm_inspect_process_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @thread_clear_honor_qlimit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
