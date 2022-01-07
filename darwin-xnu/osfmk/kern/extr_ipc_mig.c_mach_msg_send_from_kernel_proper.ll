; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_mig.c_mach_msg_send_from_kernel_proper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_mig.c_mach_msg_send_from_kernel_proper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DBG_MACH_IPC = common dso_local global i32 0, align 4
@MACH_IPC_KMSG_INFO = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@MACH_SEND_KERNEL_DEFAULT = common dso_local global i32 0, align 4
@TH_OPT_SEND_IMPORTANCE = common dso_local global i32 0, align 4
@MACH_SEND_NOIMPORTANCE = common dso_local global i32 0, align 4
@MACH_MSG_TIMEOUT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_msg_send_from_kernel_proper(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @DBG_MACH_IPC, align 4
  %10 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %11 = call i32 @MACHDBG_CODE(i32 %9, i32 %10)
  %12 = load i32, i32* @DBG_FUNC_START, align 4
  %13 = or i32 %11, %12
  %14 = call i32 (i32, ...) @KDBG(i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @ipc_kmsg_get_from_kernel(i32* %15, i32 %16, i32* %6)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i32, i32* @DBG_MACH_IPC, align 4
  %23 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %24 = call i32 @MACHDBG_CODE(i32 %22, i32 %23)
  %25 = load i32, i32* @DBG_FUNC_END, align 4
  %26 = or i32 %24, %25
  %27 = load i64, i64* %7, align 8
  %28 = call i32 (i32, ...) @KDBG(i32 %26, i64 %27)
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %3, align 8
  br label %80

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @ipc_kmsg_copyin_from_kernel(i32 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ipc_kmsg_free(i32 %37)
  %39 = load i32, i32* @DBG_MACH_IPC, align 4
  %40 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %41 = call i32 @MACHDBG_CODE(i32 %39, i32 %40)
  %42 = load i32, i32* @DBG_FUNC_END, align 4
  %43 = or i32 %41, %42
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i32, ...) @KDBG(i32 %43, i64 %44)
  %46 = load i64, i64* %7, align 8
  store i64 %46, i64* %3, align 8
  br label %80

47:                                               ; preds = %30
  %48 = load i32, i32* @MACH_SEND_KERNEL_DEFAULT, align 4
  store i32 %48, i32* %8, align 4
  %49 = call %struct.TYPE_2__* (...) @current_thread()
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TH_OPT_SEND_IMPORTANCE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i32, i32* @MACH_SEND_NOIMPORTANCE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %55, %47
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MACH_MSG_TIMEOUT_NONE, align 4
  %64 = call i64 @ipc_kmsg_send(i32 %61, i32 %62, i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ipc_kmsg_destroy(i32 %69)
  %71 = load i32, i32* @DBG_MACH_IPC, align 4
  %72 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %73 = call i32 @MACHDBG_CODE(i32 %71, i32 %72)
  %74 = load i32, i32* @DBG_FUNC_END, align 4
  %75 = or i32 %73, %74
  %76 = load i64, i64* %7, align 8
  %77 = call i32 (i32, ...) @KDBG(i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %68, %60
  %79 = load i64, i64* %7, align 8
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %78, %36, %21
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local i32 @KDBG(i32, ...) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i64 @ipc_kmsg_get_from_kernel(i32*, i32, i32*) #1

declare dso_local i64 @ipc_kmsg_copyin_from_kernel(i32) #1

declare dso_local i32 @ipc_kmsg_free(i32) #1

declare dso_local %struct.TYPE_2__* @current_thread(...) #1

declare dso_local i64 @ipc_kmsg_send(i32, i32, i32) #1

declare dso_local i32 @ipc_kmsg_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
