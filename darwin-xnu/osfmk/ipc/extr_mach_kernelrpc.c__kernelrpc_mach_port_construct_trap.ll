; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_construct_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_construct_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._kernelrpc_mach_port_construct_args = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MACH_SEND_INVALID_DEST = common dso_local global i32 0, align 4
@MACH_SEND_INVALID_DATA = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kernelrpc_mach_port_construct_trap(%struct._kernelrpc_mach_port_construct_args* %0) #0 {
  %2 = alloca %struct._kernelrpc_mach_port_construct_args*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._kernelrpc_mach_port_construct_args* %0, %struct._kernelrpc_mach_port_construct_args** %2, align 8
  %7 = load %struct._kernelrpc_mach_port_construct_args*, %struct._kernelrpc_mach_port_construct_args** %2, align 8
  %8 = getelementptr inbounds %struct._kernelrpc_mach_port_construct_args, %struct._kernelrpc_mach_port_construct_args* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_5__* @port_name_to_task(i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  %11 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct._kernelrpc_mach_port_construct_args*, %struct._kernelrpc_mach_port_construct_args** %2, align 8
  %13 = getelementptr inbounds %struct._kernelrpc_mach_port_construct_args, %struct._kernelrpc_mach_port_construct_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = bitcast i32* %6 to i8*
  %16 = call i64 @copyin(i32 %14, i8* %15, i32 4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @MACH_SEND_INVALID_DATA, align 4
  store i32 %19, i32* %5, align 4
  br label %42

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call %struct.TYPE_5__* (...) @current_task()
  %23 = icmp ne %struct.TYPE_5__* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %42

25:                                               ; preds = %20
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct._kernelrpc_mach_port_construct_args*, %struct._kernelrpc_mach_port_construct_args** %2, align 8
  %30 = getelementptr inbounds %struct._kernelrpc_mach_port_construct_args, %struct._kernelrpc_mach_port_construct_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mach_port_construct(i32 %28, i32* %6, i32 %31, i32* %4)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @KERN_SUCCESS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct._kernelrpc_mach_port_construct_args*, %struct._kernelrpc_mach_port_construct_args** %2, align 8
  %38 = getelementptr inbounds %struct._kernelrpc_mach_port_construct_args, %struct._kernelrpc_mach_port_construct_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @copyout(i32* %4, i32 %39, i32 4)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %25
  br label %42

42:                                               ; preds = %41, %24, %18
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = call i32 @task_deallocate(%struct.TYPE_5__* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_5__* @port_name_to_task(i32) #1

declare dso_local i64 @copyin(i32, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @current_task(...) #1

declare dso_local i32 @mach_port_construct(i32, i32*, i32, i32*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @task_deallocate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
