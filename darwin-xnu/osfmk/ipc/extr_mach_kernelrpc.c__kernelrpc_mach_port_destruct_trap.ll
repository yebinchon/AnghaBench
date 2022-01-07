; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_destruct_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_destruct_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._kernelrpc_mach_port_destruct_args = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MACH_SEND_INVALID_DEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kernelrpc_mach_port_destruct_trap(%struct._kernelrpc_mach_port_destruct_args* %0) #0 {
  %2 = alloca %struct._kernelrpc_mach_port_destruct_args*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct._kernelrpc_mach_port_destruct_args* %0, %struct._kernelrpc_mach_port_destruct_args** %2, align 8
  %5 = load %struct._kernelrpc_mach_port_destruct_args*, %struct._kernelrpc_mach_port_destruct_args** %2, align 8
  %6 = getelementptr inbounds %struct._kernelrpc_mach_port_destruct_args, %struct._kernelrpc_mach_port_destruct_args* %5, i32 0, i32 3
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
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct._kernelrpc_mach_port_destruct_args*, %struct._kernelrpc_mach_port_destruct_args** %2, align 8
  %19 = getelementptr inbounds %struct._kernelrpc_mach_port_destruct_args, %struct._kernelrpc_mach_port_destruct_args* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct._kernelrpc_mach_port_destruct_args*, %struct._kernelrpc_mach_port_destruct_args** %2, align 8
  %22 = getelementptr inbounds %struct._kernelrpc_mach_port_destruct_args, %struct._kernelrpc_mach_port_destruct_args* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct._kernelrpc_mach_port_destruct_args*, %struct._kernelrpc_mach_port_destruct_args** %2, align 8
  %25 = getelementptr inbounds %struct._kernelrpc_mach_port_destruct_args, %struct._kernelrpc_mach_port_destruct_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mach_port_destruct(i32 %17, i32 %20, i32 %23, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %14, %13
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = call i32 @task_deallocate(%struct.TYPE_5__* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.TYPE_5__* @port_name_to_task(i32) #1

declare dso_local %struct.TYPE_5__* @current_task(...) #1

declare dso_local i32 @mach_port_destruct(i32, i32, i32, i32) #1

declare dso_local i32 @task_deallocate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
