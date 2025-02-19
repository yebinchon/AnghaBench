; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_set_voucher_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_set_voucher_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.thread_group = type { i32 }

@IPC_VOUCHER_NULL = common dso_local global i64 0, align 8
@MACH_PORT_DEAD = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@DBG_MACH_IPC = common dso_local global i32 0, align 4
@MACH_THREAD_SET_VOUCHER = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_voucher_name(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.thread_group*, align 8
  store i64 %0, i64* %3, align 8
  %9 = call %struct.TYPE_7__* (...) @current_thread()
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load i64, i64* @IPC_VOUCHER_NULL, align 8
  store i64 %10, i64* %5, align 8
  store i32* null, i32** %7, align 8
  store %struct.thread_group* null, %struct.thread_group** %8, align 8
  %11 = load i64, i64* @MACH_PORT_DEAD, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @KERN_INVALID_RIGHT, align 4
  store i32 %15, i32* %2, align 4
  br label %68

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @MACH_PORT_VALID(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @convert_port_name_to_voucher(i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* @IPC_VOUCHER_NULL, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %16
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @bank_get_bank_ledger_and_thread_group(i64 %30, i32** %7, %struct.thread_group** %8)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i32 @thread_mtx_lock(%struct.TYPE_7__* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = call i32 @thread_mtx_unlock(%struct.TYPE_7__* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @bank_swap_thread_bank_ledger(%struct.TYPE_7__* %45, i32* %46)
  %48 = load i32, i32* @KDEBUG_TRACE, align 4
  %49 = load i32, i32* @DBG_MACH_IPC, align 4
  %50 = load i32, i32* @MACH_THREAD_SET_VOUCHER, align 4
  %51 = call i32 @MACHDBG_CODE(i32 %49, i32 %50)
  %52 = load i32, i32* @DBG_FUNC_NONE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = call i64 @thread_tid(%struct.TYPE_7__* %54)
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @VM_KERNEL_ADDRPERM(i64 %57)
  %59 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %48, i32 %53, i64 %55, i64 %56, i32 %58, i32 1, i32 0)
  %60 = load i64, i64* @IPC_VOUCHER_NULL, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %29
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @ipc_voucher_release(i64 %64)
  br label %66

66:                                               ; preds = %63, %29
  %67 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %26, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_7__* @current_thread(...) #1

declare dso_local i64 @MACH_PORT_VALID(i64) #1

declare dso_local i64 @convert_port_name_to_voucher(i64) #1

declare dso_local i32 @bank_get_bank_ledger_and_thread_group(i64, i32**, %struct.thread_group**) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @bank_swap_thread_bank_ledger(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i64 @thread_tid(%struct.TYPE_7__*) #1

declare dso_local i32 @VM_KERNEL_ADDRPERM(i64) #1

declare dso_local i32 @ipc_voucher_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
