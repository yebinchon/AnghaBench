; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_read.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_mach_vm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MAP_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_vm_read(i64 %0, i64 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @VM_MAP_NULL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %18, i64* %6, align 8
  br label %49

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %24, i64* %6, align 8
  br label %49

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i64 @vm_map_copyin(i64 %26, i32 %28, i32 %30, i32 %31, i64* %13)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* @KERN_SUCCESS, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load i64, i64* %13, align 8
  %38 = load i64*, i64** %10, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64*, i64** %11, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %36, %25
  %48 = load i64, i64* %12, align 8
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %47, %23, %17
  %50 = load i64, i64* %6, align 8
  ret i64 %50
}

declare dso_local i64 @vm_map_copyin(i64, i32, i32, i32, i64*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
