; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_estimate_vlc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_kostya.c_estimate_vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @estimate_vlc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimate_vlc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 3
  %13 = add i32 %12, 1
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %4, align 4
  %15 = lshr i32 %14, 5
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = lshr i32 %16, 2
  %18 = and i32 %17, 7
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 1, %27
  %29 = sub i32 %26, %28
  %30 = load i32, i32* %5, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @av_log2(i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %34, 2
  %36 = load i32, i32* %7, align 4
  %37 = sub i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %37, %38
  %40 = add i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %48

41:                                               ; preds = %2
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = add i32 %44, %45
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %25
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @av_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
