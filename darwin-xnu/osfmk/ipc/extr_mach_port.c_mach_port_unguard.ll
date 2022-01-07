; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_unguard.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_unguard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_NAME = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@kGUARD_EXC_INVALID_NAME = common dso_local global i32 0, align 4
@kGUARD_EXC_INVALID_RIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_unguard(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @IS_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %14, i64* %4, align 8
  br label %49

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @MACH_PORT_VALID(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @KERN_INVALID_NAME, align 8
  store i64 %20, i64* %4, align 8
  br label %49

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @ipc_port_translate_receive(i64 %22, i32 %23, i32* %9)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @KERN_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* @KERN_INVALID_NAME, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @kGUARD_EXC_INVALID_NAME, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @kGUARD_EXC_INVALID_RIGHT, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = call i32 @mach_port_guard_exception(i32 %29, i32 0, i32 0, i32 %38)
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  br label %49

41:                                               ; preds = %21
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @mach_port_unguard_locked(i32 %42, i32 %43, i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ip_unlock(i32 %46)
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %41, %37, %19, %13
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_port_translate_receive(i64, i32, i32*) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

declare dso_local i64 @mach_port_unguard_locked(i32, i32, i32) #1

declare dso_local i32 @ip_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
