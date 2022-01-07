; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_mix.c_mix_32_to_16_mono.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_mix.c_mix_32_to_16_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXOUT = common dso_local global i32 0, align 4
@MINOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mix_32_to_16_mono(i16* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %28, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load i16*, i16** %4, align 8
  %13 = load i16, i16* %12, align 2
  %14 = sext i16 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MAXOUT, align 4
  %22 = load i32, i32* @MINOUT, align 4
  %23 = call i32 @Limit(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = trunc i32 %24 to i16
  %26 = load i16*, i16** %4, align 8
  %27 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %27, i16** %4, align 8
  store i16 %25, i16* %26, align 2
  br label %28

28:                                               ; preds = %11
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  br label %8

31:                                               ; preds = %8
  ret void
}

declare dso_local i32 @Limit(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
