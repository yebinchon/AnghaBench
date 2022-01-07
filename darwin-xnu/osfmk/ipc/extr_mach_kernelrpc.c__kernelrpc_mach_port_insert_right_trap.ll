; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_insert_right_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_kernelrpc.c__kernelrpc_mach_port_insert_right_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._kernelrpc_mach_port_insert_right_args = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@MACH_SEND_INVALID_DEST = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_kernelrpc_mach_port_insert_right_trap(%struct._kernelrpc_mach_port_insert_right_args* %0) #0 {
  %2 = alloca %struct._kernelrpc_mach_port_insert_right_args*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._kernelrpc_mach_port_insert_right_args* %0, %struct._kernelrpc_mach_port_insert_right_args** %2, align 8
  %7 = load %struct._kernelrpc_mach_port_insert_right_args*, %struct._kernelrpc_mach_port_insert_right_args** %2, align 8
  %8 = getelementptr inbounds %struct._kernelrpc_mach_port_insert_right_args, %struct._kernelrpc_mach_port_insert_right_args* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_5__* @port_name_to_task(i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  %11 = load i32, i32* @MACH_SEND_INVALID_DEST, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call %struct.TYPE_5__* (...) @current_task()
  %14 = icmp ne %struct.TYPE_5__* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct._kernelrpc_mach_port_insert_right_args*, %struct._kernelrpc_mach_port_insert_right_args** %2, align 8
  %21 = getelementptr inbounds %struct._kernelrpc_mach_port_insert_right_args, %struct._kernelrpc_mach_port_insert_right_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct._kernelrpc_mach_port_insert_right_args*, %struct._kernelrpc_mach_port_insert_right_args** %2, align 8
  %24 = getelementptr inbounds %struct._kernelrpc_mach_port_insert_right_args, %struct._kernelrpc_mach_port_insert_right_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = bitcast i64* %4 to i32*
  %27 = call i32 @ipc_object_copyin(i32 %19, i32 %22, i32 %25, i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @KERN_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %61

32:                                               ; preds = %16
  %33 = load %struct._kernelrpc_mach_port_insert_right_args*, %struct._kernelrpc_mach_port_insert_right_args** %2, align 8
  %34 = getelementptr inbounds %struct._kernelrpc_mach_port_insert_right_args, %struct._kernelrpc_mach_port_insert_right_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ipc_object_copyin_type(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct._kernelrpc_mach_port_insert_right_args*, %struct._kernelrpc_mach_port_insert_right_args** %2, align 8
  %41 = getelementptr inbounds %struct._kernelrpc_mach_port_insert_right_args, %struct._kernelrpc_mach_port_insert_right_args* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @mach_port_insert_right(i32 %39, i32 %42, i64 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @KERN_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %32
  %50 = load i64, i64* %4, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i64 @IO_VALID(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i64, i64* %4, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ipc_object_destroy(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59, %32
  br label %61

61:                                               ; preds = %60, %31, %15
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = icmp ne %struct.TYPE_5__* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = call i32 @task_deallocate(%struct.TYPE_5__* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_5__* @port_name_to_task(i32) #1

declare dso_local %struct.TYPE_5__* @current_task(...) #1

declare dso_local i32 @ipc_object_copyin(i32, i32, i32, i32*) #1

declare dso_local i32 @ipc_object_copyin_type(i32) #1

declare dso_local i32 @mach_port_insert_right(i32, i32, i64, i32) #1

declare dso_local i64 @IO_VALID(i32) #1

declare dso_local i32 @ipc_object_destroy(i32, i32) #1

declare dso_local i32 @task_deallocate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
