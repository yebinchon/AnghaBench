; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_alloc_ptpage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_alloc_ptpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ropage_next = common dso_local global i64 0, align 8
@ropagetable_begin = common dso_local global i32 0, align 4
@ropagetable_end = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i64 0, align 8
@avail_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @alloc_ptpage(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* @FALSE, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @ropage_next, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i64 ptrtoint (i32* @ropagetable_begin to i64), i64* @ropage_next, align 8
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load i64, i64* @ropage_next, align 8
  %14 = icmp slt i64 %13, ptrtoint (i32* @ropagetable_end to i64)
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64, i64* @ropage_next, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @ARM_PGBYTES, align 8
  %19 = load i64, i64* @ropage_next, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* @ropage_next, align 8
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %31

22:                                               ; preds = %9
  %23 = load i32, i32* @avail_start, align 4
  %24 = call i64 @phystokv(i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* @ARM_PGBYTES, align 8
  %26 = load i32, i32* @avail_start, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* @avail_start, align 4
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %22, %12
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @phystokv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
