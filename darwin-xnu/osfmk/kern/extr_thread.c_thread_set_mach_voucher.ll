; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_set_mach_voucher.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_set_mach_voucher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.thread_group = type { i32 }

@THREAD_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_IPC = common dso_local global i32 0, align 4
@MACH_THREAD_SET_VOUCHER = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_mach_voucher(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.thread_group*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %7, align 8
  store %struct.thread_group* null, %struct.thread_group** %8, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @THREAD_NULL, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = icmp eq %struct.TYPE_9__* %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %13, i32* %3, align 4
  br label %61

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = call %struct.TYPE_9__* (...) @current_thread()
  %17 = icmp ne %struct.TYPE_9__* %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %24, i32* %3, align 4
  br label %61

25:                                               ; preds = %18, %14
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @ipc_voucher_reference(i64 %26)
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @bank_get_bank_ledger_and_thread_group(i64 %28, i32** %7, %struct.thread_group** %8)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = call i32 @thread_mtx_lock(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* @MACH_PORT_NULL, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = call i32 @thread_mtx_unlock(%struct.TYPE_9__* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @bank_swap_thread_bank_ledger(%struct.TYPE_9__* %43, i32* %44)
  %46 = load i32, i32* @KDEBUG_TRACE, align 4
  %47 = load i32, i32* @DBG_MACH_IPC, align 4
  %48 = load i32, i32* @MACH_THREAD_SET_VOUCHER, align 4
  %49 = call i32 @MACHDBG_CODE(i32 %47, i32 %48)
  %50 = load i32, i32* @DBG_FUNC_NONE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = call i64 @thread_tid(%struct.TYPE_9__* %52)
  %54 = load i64, i64* @MACH_PORT_NULL, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @VM_KERNEL_ADDRPERM(i64 %55)
  %57 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %46, i32 %51, i64 %53, i64 %54, i32 %56, i32 3, i32 0)
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @ipc_voucher_release(i64 %58)
  %60 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %25, %23, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_9__* @current_thread(...) #1

declare dso_local i32 @ipc_voucher_reference(i64) #1

declare dso_local i32 @bank_get_bank_ledger_and_thread_group(i64, i32**, %struct.thread_group**) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @bank_swap_thread_bank_ledger(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i64 @thread_tid(%struct.TYPE_9__*) #1

declare dso_local i32 @VM_KERNEL_ADDRPERM(i64) #1

declare dso_local i32 @ipc_voucher_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
