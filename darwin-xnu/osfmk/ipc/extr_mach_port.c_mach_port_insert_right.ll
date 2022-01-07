; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_insert_right.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_insert_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i32 0, align 4
@KERN_INVALID_VALUE = common dso_local global i32 0, align 4
@KERN_INVALID_CAPABILITY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_port_insert_right(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @IS_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @KERN_INVALID_TASK, align 4
  store i32 %14, i32* %5, align 4
  br label %40

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @MACH_PORT_VALID(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @MACH_MSG_TYPE_PORT_ANY_RIGHT(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @KERN_INVALID_VALUE, align 4
  store i32 %24, i32* %5, align 4
  br label %40

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @IO_VALID(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @KERN_INVALID_CAPABILITY, align 4
  store i32 %31, i32* %5, align 4
  br label %40

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ipc_object_copyout_name(i64 %33, i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %32, %30, %23, %13
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i32 @MACH_MSG_TYPE_PORT_ANY_RIGHT(i32) #1

declare dso_local i32 @IO_VALID(i32) #1

declare dso_local i32 @ipc_object_copyout_name(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
