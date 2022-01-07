; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_exnor_1st.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_exnor_1st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @exnor_1st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @exnor_1st(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %17, %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = ashr i64 %18, 23
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %3, align 8
  %21 = ashr i64 %20, 15
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %3, align 8
  %23 = ashr i64 %22, 7
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %8, align 8
  %26 = xor i64 %24, %25
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %9, align 8
  %29 = xor i64 %27, %28
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = xor i64 %30, %31
  %33 = xor i64 %32, -1
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %3, align 8
  %35 = ashr i64 %34, 1
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %11, align 8
  %37 = shl i64 %36, 30
  %38 = and i64 %37, 1073741824
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %12, align 8
  %41 = or i64 %39, %40
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %13

44:                                               ; preds = %13
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
