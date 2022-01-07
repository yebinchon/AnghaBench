; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_MuLawDecode.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_MuLawDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @MuLawDecode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = xor i32 %6, -1
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 4
  %10 = and i32 %9, 7
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 15
  %13 = add nsw i32 %12, 16
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 3
  %17 = shl i32 %14, %16
  %18 = sub nsw i32 %17, 128
  %19 = sub nsw i32 %18, 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %3, align 8
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 128
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  br label %29

26:                                               ; preds = %1
  %27 = load i64, i64* %3, align 8
  %28 = sub nsw i64 0, %27
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i64 [ %25, %24 ], [ %28, %26 ]
  %31 = trunc i64 %30 to i16
  ret i16 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
