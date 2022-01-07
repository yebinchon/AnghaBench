; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_extract_right.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_extract_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_VALUE = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_extract_right(i64 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @IS_NULL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %17, i64* %6, align 8
  br label %45

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @MACH_MSG_TYPE_PORT_ANY(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @KERN_INVALID_VALUE, align 8
  store i64 %23, i64* %6, align 8
  br label %45

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @MACH_PORT_VALID(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %29, i64* %6, align 8
  br label %45

30:                                               ; preds = %24
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i64 @ipc_object_copyin(i64 %31, i32 %32, i32 %33, i32* %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @KERN_SUCCESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ipc_object_copyin_type(i32 %40)
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i64, i64* %12, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %43, %28, %22, %16
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i32 @MACH_MSG_TYPE_PORT_ANY(i32) #1

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_object_copyin(i64, i32, i32, i32*) #1

declare dso_local i32 @ipc_object_copyin_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
