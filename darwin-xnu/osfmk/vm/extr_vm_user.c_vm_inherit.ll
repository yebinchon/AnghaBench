; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_inherit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_user.c_vm_inherit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MAP_NULL = common dso_local global i64 0, align 8
@VM_INHERIT_LAST_VALID = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_inherit(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @VM_MAP_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @VM_INHERIT_LAST_VALID, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %13, %4
  %24 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %24, i32* %5, align 4
  br label %44

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %29, i32* %5, align 4
  br label %44

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @VM_MAP_PAGE_MASK(i64 %33)
  %35 = call i32 @vm_map_trunc_page(i64 %32, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @VM_MAP_PAGE_MASK(i64 %39)
  %41 = call i32 @vm_map_round_page(i64 %38, i32 %40)
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @vm_map_inherit(i64 %31, i32 %35, i32 %41, i64 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %30, %28, %23
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @vm_map_inherit(i64, i32, i32, i64) #1

declare dso_local i32 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i64) #1

declare dso_local i32 @vm_map_round_page(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
