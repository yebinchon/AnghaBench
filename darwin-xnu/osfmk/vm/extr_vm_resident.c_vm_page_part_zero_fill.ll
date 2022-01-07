; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_part_zero_fill.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_resident.c_vm_page_part_zero_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_PAGE_NULL = common dso_local global i64 0, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_page_part_zero_fill(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %3, %13
  %9 = call i64 (...) @vm_page_grab()
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @VM_PAGE_NULL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @THREAD_UNINT, align 4
  %15 = call i32 @vm_page_wait(i32 %14)
  br label %8

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @vm_page_zero_fill(i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @vm_page_part_copy(i64 %23, i64 0, i64 %24, i64 0, i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %43, %44
  %46 = sub nsw i64 %42, %45
  %47 = call i32 @vm_page_part_copy(i64 %34, i64 %37, i64 %38, i64 %41, i64 %46)
  br label %48

48:                                               ; preds = %33, %27
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @vm_page_copy(i64 %49, i64 %50)
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @VM_PAGE_FREE(i64 %52)
  ret void
}

declare dso_local i64 @vm_page_grab(...) #1

declare dso_local i32 @vm_page_wait(i32) #1

declare dso_local i32 @vm_page_zero_fill(i64) #1

declare dso_local i32 @vm_page_part_copy(i64, i64, i64, i64, i64) #1

declare dso_local i32 @vm_page_copy(i64, i64) #1

declare dso_local i32 @VM_PAGE_FREE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
