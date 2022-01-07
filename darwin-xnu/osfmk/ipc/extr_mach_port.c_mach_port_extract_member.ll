; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_extract_member.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_extract_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@MACH_PORT_RIGHT_RECEIVE = common dso_local global i32 0, align 4
@MACH_PORT_RIGHT_PORT_SET = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IO_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_extract_member(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @IS_NULL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %15, i64* %4, align 8
  br label %60

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @MACH_PORT_VALID(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @MACH_PORT_VALID(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  %25 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %25, i64* %4, align 8
  br label %60

26:                                               ; preds = %20
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MACH_PORT_RIGHT_RECEIVE, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MACH_PORT_RIGHT_PORT_SET, align 4
  %32 = call i64 @ipc_object_translate_two(i64 %27, i32 %28, i32 %29, i64* %9, i32 %30, i32 %31, i64* %8)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @KERN_SUCCESS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %4, align 8
  br label %60

38:                                               ; preds = %26
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @IO_NULL, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @IO_NULL, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i64, i64* %8, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 @ipc_pset_remove(i32 %50, i32 %52)
  store i64 %53, i64* %10, align 8
  %54 = call i32 @__IGNORE_WCASTALIGN(i64 %53)
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @io_unlock(i64 %55)
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @io_unlock(i64 %57)
  %59 = load i64, i64* %10, align 8
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %38, %36, %24, %14
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_object_translate_two(i64, i32, i32, i64*, i32, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @__IGNORE_WCASTALIGN(i64) #1

declare dso_local i64 @ipc_pset_remove(i32, i32) #1

declare dso_local i32 @io_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
