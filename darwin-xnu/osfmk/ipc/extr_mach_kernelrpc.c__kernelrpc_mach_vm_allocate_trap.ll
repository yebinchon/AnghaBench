; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_vm_allocate_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_vm_allocate_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._kernelrpc_mach_vm_allocate_trap_args = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MACH_SEND_INVALID_DEST = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kernelrpc_mach_vm_allocate_trap(%struct._kernelrpc_mach_vm_allocate_trap_args* %0) #0 {
  %2 = alloca %struct._kernelrpc_mach_vm_allocate_trap_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct._kernelrpc_mach_vm_allocate_trap_args* %0, %struct._kernelrpc_mach_vm_allocate_trap_args** %2, align 8
  %6 = load %struct._kernelrpc_mach_vm_allocate_trap_args*, %struct._kernelrpc_mach_vm_allocate_trap_args** %2, align 8
  %7 = getelementptr inbounds %struct._kernelrpc_mach_vm_allocate_trap_args, %struct._kernelrpc_mach_vm_allocate_trap_args* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_5__* @port_name_to_task(i32 %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call %struct.TYPE_5__* (...) @current_task()
  %13 = icmp ne %struct.TYPE_5__* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %43

15:                                               ; preds = %1
  %16 = load %struct._kernelrpc_mach_vm_allocate_trap_args*, %struct._kernelrpc_mach_vm_allocate_trap_args** %2, align 8
  %17 = getelementptr inbounds %struct._kernelrpc_mach_vm_allocate_trap_args, %struct._kernelrpc_mach_vm_allocate_trap_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = bitcast i32* %3 to i8*
  %20 = call i64 @copyin(i32 %18, i8* %19, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %43

23:                                               ; preds = %15
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct._kernelrpc_mach_vm_allocate_trap_args*, %struct._kernelrpc_mach_vm_allocate_trap_args** %2, align 8
  %28 = getelementptr inbounds %struct._kernelrpc_mach_vm_allocate_trap_args, %struct._kernelrpc_mach_vm_allocate_trap_args* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct._kernelrpc_mach_vm_allocate_trap_args*, %struct._kernelrpc_mach_vm_allocate_trap_args** %2, align 8
  %31 = getelementptr inbounds %struct._kernelrpc_mach_vm_allocate_trap_args, %struct._kernelrpc_mach_vm_allocate_trap_args* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mach_vm_allocate_external(i32 %26, i32* %3, i32 %29, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @KERN_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %23
  %38 = load %struct._kernelrpc_mach_vm_allocate_trap_args*, %struct._kernelrpc_mach_vm_allocate_trap_args** %2, align 8
  %39 = getelementptr inbounds %struct._kernelrpc_mach_vm_allocate_trap_args, %struct._kernelrpc_mach_vm_allocate_trap_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @copyout(i32* %3, i32 %40, i32 4)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %23
  br label %43

43:                                               ; preds = %42, %22, %14
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = call i32 @task_deallocate(%struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_5__* @port_name_to_task(i32) #1

declare dso_local %struct.TYPE_5__* @current_task(...) #1

declare dso_local i64 @copyin(i32, i8*, i32) #1

declare dso_local i32 @mach_vm_allocate_external(i32, i32*, i32, i32) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @task_deallocate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
