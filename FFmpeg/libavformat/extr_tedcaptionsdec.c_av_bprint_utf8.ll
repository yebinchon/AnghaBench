; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tedcaptionsdec.c_av_bprint_utf8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tedcaptionsdec.c_av_bprint_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @av_bprint_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av_bprint_utf8(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ule i32 %7, 127
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @av_bprint_chars(i32* %10, i32 %11, i32 1)
  br label %45

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @av_log2(i32 %14)
  %16 = sub nsw i32 %15, 2
  %17 = sdiv i32 %16, 5
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 6
  %22 = lshr i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 65408, %23
  %25 = and i32 %24, 255
  %26 = or i32 %22, %25
  %27 = call i32 @av_bprint_chars(i32* %18, i32 %26, i32 1)
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %42, %13
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 6
  %38 = lshr i32 %35, %37
  %39 = and i32 %38, 63
  %40 = or i32 %39, 128
  %41 = call i32 @av_bprint_chars(i32* %34, i32 %40, i32 1)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %30

45:                                               ; preds = %9, %30
  ret void
}

declare dso_local i32 @av_bprint_chars(i32*, i32, i32) #1

declare dso_local i32 @av_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
