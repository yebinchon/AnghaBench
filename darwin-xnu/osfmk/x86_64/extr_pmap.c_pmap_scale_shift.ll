; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_scale_shift.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_scale_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sane_size = common dso_local global i32 0, align 4
@GB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @pmap_scale_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmap_scale_shift() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = load i32, i32* @sane_size, align 4
  %3 = load i32, i32* @GB, align 4
  %4 = mul nsw i32 8, %3
  %5 = icmp sle i32 %2, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @sane_size, align 4
  %8 = load i32, i32* @GB, align 4
  %9 = mul nsw i32 2, %8
  %10 = sdiv i32 %7, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %1, align 8
  br label %38

12:                                               ; preds = %0
  %13 = load i32, i32* @sane_size, align 4
  %14 = load i32, i32* @GB, align 4
  %15 = mul nsw i32 32, %14
  %16 = icmp sle i32 %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, i32* @sane_size, align 4
  %19 = load i32, i32* @GB, align 4
  %20 = mul nsw i32 8, %19
  %21 = sub nsw i32 %18, %20
  %22 = load i32, i32* @GB, align 4
  %23 = mul nsw i32 4, %22
  %24 = sdiv i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 4, %25
  store i64 %26, i64* %1, align 8
  br label %37

27:                                               ; preds = %12
  %28 = load i32, i32* @sane_size, align 4
  %29 = load i32, i32* @GB, align 4
  %30 = mul nsw i32 32, %29
  %31 = sub nsw i32 %28, %30
  %32 = load i32, i32* @GB, align 4
  %33 = mul nsw i32 8, %32
  %34 = sdiv i32 %31, %33
  %35 = call i64 @MIN(i32 4, i32 %34)
  %36 = add nsw i64 10, %35
  store i64 %36, i64* %1, align 8
  br label %37

37:                                               ; preds = %27, %17
  br label %38

38:                                               ; preds = %37, %6
  %39 = load i64, i64* %1, align 8
  ret i64 %39
}

declare dso_local i64 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
