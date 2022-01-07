; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_destruct.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_NAME = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@kGUARD_EXC_INVALID_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_destruct(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
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
  br label %43

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @MACH_PORT_VALID(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @KERN_INVALID_NAME, align 8
  store i64 %22, i64* %5, align 8
  br label %43

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @ipc_right_lookup_write(i64 %24, i32 %25, i32* %11)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @KERN_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @kGUARD_EXC_INVALID_NAME, align 4
  %33 = call i32 @mach_port_guard_exception(i32 %31, i32 0, i32 0, i32 %32)
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %5, align 8
  br label %43

35:                                               ; preds = %23
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @ipc_right_destruct(i64 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %35, %30, %21, %15
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_right_lookup_write(i64, i32, i32*) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

declare dso_local i64 @ipc_right_destruct(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
