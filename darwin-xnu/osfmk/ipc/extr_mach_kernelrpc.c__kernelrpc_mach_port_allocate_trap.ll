; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_allocate_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_allocate_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._kernelrpc_mach_port_allocate_args = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MACH_SEND_INVALID_DEST = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kernelrpc_mach_port_allocate_trap(%struct._kernelrpc_mach_port_allocate_args* %0) #0 {
  %2 = alloca %struct._kernelrpc_mach_port_allocate_args*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._kernelrpc_mach_port_allocate_args* %0, %struct._kernelrpc_mach_port_allocate_args** %2, align 8
  %6 = load %struct._kernelrpc_mach_port_allocate_args*, %struct._kernelrpc_mach_port_allocate_args** %2, align 8
  %7 = getelementptr inbounds %struct._kernelrpc_mach_port_allocate_args, %struct._kernelrpc_mach_port_allocate_args* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_5__* @port_name_to_task(i32 %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  %10 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = call %struct.TYPE_5__* (...) @current_task()
  %13 = icmp ne %struct.TYPE_5__* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct._kernelrpc_mach_port_allocate_args*, %struct._kernelrpc_mach_port_allocate_args** %2, align 8
  %20 = getelementptr inbounds %struct._kernelrpc_mach_port_allocate_args, %struct._kernelrpc_mach_port_allocate_args* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mach_port_allocate(i32 %18, i32 %21, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @KERN_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load %struct._kernelrpc_mach_port_allocate_args*, %struct._kernelrpc_mach_port_allocate_args** %2, align 8
  %28 = getelementptr inbounds %struct._kernelrpc_mach_port_allocate_args, %struct._kernelrpc_mach_port_allocate_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @copyout(i32* %4, i32 %29, i32 4)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %15
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = call i32 @task_deallocate(%struct.TYPE_5__* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_5__* @port_name_to_task(i32) #1

declare dso_local %struct.TYPE_5__* @current_task(...) #1

declare dso_local i32 @mach_port_allocate(i32, i32, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @task_deallocate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
