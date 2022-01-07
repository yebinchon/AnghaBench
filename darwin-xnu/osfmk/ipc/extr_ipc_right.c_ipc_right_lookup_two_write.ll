; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_lookup_two_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_lookup_two_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i32 0, align 4
@IE_NULL = common dso_local global i32 0, align 4
@kGUARD_EXC_INVALID_NAME = common dso_local global i32 0, align 4
@KERN_INVALID_NAME = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_lookup_two_write(i64 %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @IS_NULL, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @is_write_lock(i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @is_active(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @is_write_unlock(i64 %25)
  %27 = load i32, i32* @KERN_INVALID_TASK, align 4
  store i32 %27, i32* %6, align 4
  br label %60

28:                                               ; preds = %5
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ipc_entry_lookup(i64 %29, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @IE_NULL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @is_write_unlock(i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @kGUARD_EXC_INVALID_NAME, align 4
  %39 = call i32 @mach_port_guard_exception(i32 %37, i32 0, i32 0, i32 %38)
  %40 = load i32, i32* @KERN_INVALID_NAME, align 4
  store i32 %40, i32* %6, align 4
  br label %60

41:                                               ; preds = %28
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @ipc_entry_lookup(i64 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* @IE_NULL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @is_write_unlock(i64 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @kGUARD_EXC_INVALID_NAME, align 4
  %52 = call i32 @mach_port_guard_exception(i32 %50, i32 0, i32 0, i32 %51)
  %53 = load i32, i32* @KERN_INVALID_NAME, align 4
  store i32 %53, i32* %6, align 4
  br label %60

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %54, %47, %34, %24
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_write_lock(i64) #1

declare dso_local i32 @is_active(i64) #1

declare dso_local i32 @is_write_unlock(i64) #1

declare dso_local i32 @ipc_entry_lookup(i64, i32) #1

declare dso_local i32 @mach_port_guard_exception(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
