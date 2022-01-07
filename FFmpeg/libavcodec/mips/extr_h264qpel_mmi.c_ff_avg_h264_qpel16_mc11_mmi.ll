; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_mmi.c_ff_avg_h264_qpel16_mc11_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_mmi.c_ff_avg_h264_qpel16_mc11_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel16_mc11_mmi(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [336 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i32], align 16
  %10 = alloca [256 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds [336 x i32], [336 x i32]* %7, i64 0, i64 0
  %12 = getelementptr inbounds i32, i32* %11, i64 32
  store i32* %12, i32** %8, align 8
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @put_h264_qpel16_h_lowpass_mmi(i32* %13, i32* %14, i32 16, i32 %15)
  %17 = getelementptr inbounds [336 x i32], [336 x i32]* %7, i64 0, i64 0
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @copy_block16_mmi(i32* %17, i32* %23, i32 16, i32 %24, i32 21)
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @put_h264_qpel16_v_lowpass_mmi(i32* %26, i32* %27, i32 16, i32 16)
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %10, i64 0, i64 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ff_avg_pixels16_l2_8_mmi(i32* %29, i32* %30, i32* %31, i32 %32, i32 16, i32 16, i32 16)
  ret void
}

declare dso_local i32 @put_h264_qpel16_h_lowpass_mmi(i32*, i32*, i32, i32) #1

declare dso_local i32 @copy_block16_mmi(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_h264_qpel16_v_lowpass_mmi(i32*, i32*, i32, i32) #1

declare dso_local i32 @ff_avg_pixels16_l2_8_mmi(i32*, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
