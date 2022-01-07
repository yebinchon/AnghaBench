; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_mod_refs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_mod_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@MACH_PORT_RIGHT_NUMBER = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i64 0, align 8
@MACH_PORT_RIGHT_SEND = common dso_local global i32 0, align 4
@MACH_PORT_RIGHT_SEND_ONCE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_INVALID_NAME = common dso_local global i64 0, align 8
@kGUARD_EXC_INVALID_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_mod_refs(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @IS_NULL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %16, i64* %5, align 8
  br label %59

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MACH_PORT_RIGHT_NUMBER, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @KERN_INVALID_VALUE, align 8
  store i64 %22, i64* %5, align 8
  br label %59

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @MACH_PORT_VALID(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MACH_PORT_RIGHT_SEND, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @MACH_PORT_RIGHT_SEND_ONCE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27
  %36 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %36, i64* %5, align 8
  br label %59

37:                                               ; preds = %31
  %38 = load i64, i64* @KERN_INVALID_NAME, align 8
  store i64 %38, i64* %5, align 8
  br label %59

39:                                               ; preds = %23
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @ipc_right_lookup_write(i64 %40, i32 %41, i32* %10)
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @kGUARD_EXC_INVALID_NAME, align 4
  %49 = call i32 @mach_port_guard_exception(i32 %47, i32 0, i32 0, i32 %48)
  %50 = load i64, i64* %11, align 8
  store i64 %50, i64* %5, align 8
  br label %59

51:                                               ; preds = %39
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @ipc_right_delta(i64 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* %11, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %51, %46, %37, %35, %21, %15
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_right_lookup_write(i64, i32, i32*) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

declare dso_local i64 @ipc_right_delta(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
