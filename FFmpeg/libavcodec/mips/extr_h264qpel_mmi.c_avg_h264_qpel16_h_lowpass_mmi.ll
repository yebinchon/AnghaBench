; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_mmi.c_avg_h264_qpel16_h_lowpass_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_mmi.c_avg_h264_qpel16_h_lowpass_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @avg_h264_qpel16_h_lowpass_mmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avg_h264_qpel16_h_lowpass_mmi(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @avg_h264_qpel8_h_lowpass_mmi(i32* %9, i32* %10, i32 %11, i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @avg_h264_qpel8_h_lowpass_mmi(i32* %15, i32* %17, i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 8, %21
  %23 = load i32*, i32** %6, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 8, %26
  %28 = load i32*, i32** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @avg_h264_qpel8_h_lowpass_mmi(i32* %31, i32* %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @avg_h264_qpel8_h_lowpass_mmi(i32* %37, i32* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @avg_h264_qpel8_h_lowpass_mmi(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
