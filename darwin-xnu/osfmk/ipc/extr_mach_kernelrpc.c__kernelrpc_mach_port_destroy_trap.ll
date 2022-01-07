; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_destroy_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_destroy_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._kernelrpc_mach_port_destroy_args = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MACH_SEND_INVALID_DEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kernelrpc_mach_port_destroy_trap(%struct._kernelrpc_mach_port_destroy_args* %0) #0 {
  %2 = alloca %struct._kernelrpc_mach_port_destroy_args*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct._kernelrpc_mach_port_destroy_args* %0, %struct._kernelrpc_mach_port_destroy_args** %2, align 8
  %5 = load %struct._kernelrpc_mach_port_destroy_args*, %struct._kernelrpc_mach_port_destroy_args** %2, align 8
  %6 = getelementptr inbounds %struct._kernelrpc_mach_port_destroy_args, %struct._kernelrpc_mach_port_destroy_args* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_5__* @port_name_to_task(i32 %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = call %struct.TYPE_5__* (...) @current_task()
  %12 = icmp ne %struct.TYPE_5__* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct._kernelrpc_mach_port_destroy_args*, %struct._kernelrpc_mach_port_destroy_args** %2, align 8
  %19 = getelementptr inbounds %struct._kernelrpc_mach_port_destroy_args, %struct._kernelrpc_mach_port_destroy_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mach_port_destroy(i32 %17, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = call i32 @task_deallocate(%struct.TYPE_5__* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.TYPE_5__* @port_name_to_task(i32) #1

declare dso_local %struct.TYPE_5__* @current_task(...) #1

declare dso_local i32 @mach_port_destroy(i32, i32) #1

declare dso_local i32 @task_deallocate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
