; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_videogen.c_int_cos.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_videogen.c_int_cos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FRAC_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @int_cos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_cos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @FRAC_ONE, align 4
  %7 = sub nsw i32 %6, 1
  %8 = and i32 %5, %7
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @FRAC_ONE, align 4
  %11 = sdiv i32 %10, 2
  %12 = icmp sge i32 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @FRAC_ONE, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %1
  store i32 0, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @FRAC_ONE, align 4
  %20 = sdiv i32 %19, 4
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  %23 = load i32, i32* @FRAC_ONE, align 4
  %24 = sdiv i32 %23, 2
  %25 = load i32, i32* %2, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @FRAC_ONE, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = mul nsw i32 %29, %30
  %32 = ashr i32 %31, 4
  %33 = sub nsw i32 %28, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = xor i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
