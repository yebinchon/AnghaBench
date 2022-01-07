; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_object.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8
@MACH_PORT_DEAD = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i64 0, align 8
@MACH_MSG_IPC_KERNEL = common dso_local global i32 0, align 4
@MACH_MSG_IPC_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_kmsg_copyout_object(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @IO_VALID(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @CAST_MACH_PORT_TO_NAME(i32 %15)
  %17 = load i32*, i32** %9, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  store i32 %18, i32* %5, align 4
  br label %52

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @ipc_object_copyout(i32 %20, i32 %21, i32 %22, i32 %23, i32* %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @KERN_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ipc_object_destroy(i32 %30, i32 %31)
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @MACH_PORT_DEAD, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %49

39:                                               ; preds = %29
  %40 = load i32, i32* @MACH_PORT_NULL, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @KERN_RESOURCE_SHORTAGE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @MACH_MSG_IPC_KERNEL, align 4
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %39
  %48 = load i32, i32* @MACH_MSG_IPC_SPACE, align 4
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %47, %45, %14
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @IO_VALID(i32) #1

declare dso_local i32 @CAST_MACH_PORT_TO_NAME(i32) #1

declare dso_local i64 @ipc_object_copyout(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ipc_object_destroy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
