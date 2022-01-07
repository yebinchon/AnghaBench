; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_mig.c_mach_msg_send_from_kernel_with_options.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_mig.c_mach_msg_send_from_kernel_with_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DBG_MACH_IPC = common dso_local global i32 0, align 4
@MACH_IPC_KMSG_INFO = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i64 0, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@TH_OPT_SEND_IMPORTANCE = common dso_local global i32 0, align 4
@MACH_SEND_NOIMPORTANCE = common dso_local global i32 0, align 4
@MACH_SEND_IMPORTANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_msg_send_from_kernel_with_options(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @DBG_MACH_IPC, align 4
  %13 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %14 = call i32 @MACHDBG_CODE(i32 %12, i32 %13)
  %15 = load i32, i32* @DBG_FUNC_START, align 4
  %16 = or i32 %14, %15
  %17 = call i32 (i32, ...) @KDBG(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @ipc_kmsg_get_from_kernel(i32* %18, i32 %19, i32* %10)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load i32, i32* @DBG_MACH_IPC, align 4
  %26 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %27 = call i32 @MACHDBG_CODE(i32 %25, i32 %26)
  %28 = load i32, i32* @DBG_FUNC_END, align 4
  %29 = or i32 %27, %28
  %30 = load i64, i64* %11, align 8
  %31 = call i32 (i32, ...) @KDBG(i32 %29, i64 %30)
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %5, align 8
  br label %92

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @ipc_kmsg_copyin_from_kernel(i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ipc_kmsg_free(i32 %40)
  %42 = load i32, i32* @DBG_MACH_IPC, align 4
  %43 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %44 = call i32 @MACHDBG_CODE(i32 %42, i32 %43)
  %45 = load i32, i32* @DBG_FUNC_END, align 4
  %46 = or i32 %44, %45
  %47 = load i64, i64* %11, align 8
  %48 = call i32 (i32, ...) @KDBG(i32 %46, i64 %47)
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %5, align 8
  br label %92

50:                                               ; preds = %33
  %51 = call %struct.TYPE_2__* (...) @current_thread()
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TH_OPT_SEND_IMPORTANCE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @MACH_SEND_NOIMPORTANCE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %72

62:                                               ; preds = %50
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @MACH_SEND_IMPORTANCE, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @MACH_SEND_NOIMPORTANCE, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %67, %62
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @ipc_kmsg_send(i32 %73, i32 %74, i32 %75)
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @ipc_kmsg_destroy(i32 %81)
  %83 = load i32, i32* @DBG_MACH_IPC, align 4
  %84 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %85 = call i32 @MACHDBG_CODE(i32 %83, i32 %84)
  %86 = load i32, i32* @DBG_FUNC_END, align 4
  %87 = or i32 %85, %86
  %88 = load i64, i64* %11, align 8
  %89 = call i32 (i32, ...) @KDBG(i32 %87, i64 %88)
  br label %90

90:                                               ; preds = %80, %72
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %90, %39, %24
  %93 = load i64, i64* %5, align 8
  ret i64 %93
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
