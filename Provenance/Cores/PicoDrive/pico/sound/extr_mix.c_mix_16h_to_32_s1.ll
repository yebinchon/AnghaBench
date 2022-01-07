; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_mix.c_mix_16h_to_32_s1.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_mix.c_mix_16h_to_32_s1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mix_16h_to_32_s1(i32* %0, i16* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 1
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i16*, i16** %5, align 8
  %15 = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %15, i16** %5, align 8
  %16 = load i16, i16* %14, align 2
  %17 = sext i16 %16 to i32
  %18 = ashr i32 %17, 1
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  %21 = load i32, i32* %19, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %19, align 4
  %23 = load i16*, i16** %5, align 8
  %24 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %24, i16** %5, align 8
  %25 = load i16, i16* %23, align 2
  %26 = sext i16 %25 to i32
  %27 = ashr i32 %26, 1
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %4, align 8
  %30 = load i32, i32* %28, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %28, align 4
  %32 = load i16*, i16** %5, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 2
  store i16* %33, i16** %5, align 8
  br label %9

34:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
