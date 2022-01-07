; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_mmi.c_ff_put_h264_qpel4_mc32_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_mmi.c_ff_put_h264_qpel4_mc32_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel4_mc32_mmi(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [36 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca [16 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  %12 = getelementptr inbounds i32, i32* %11, i64 8
  store i32* %12, i32** %8, align 8
  %13 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = sub i64 0, %17
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @copy_block4_mmi(i32* %13, i32* %20, i32 4, i32 %21, i32 9)
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @put_h264_qpel4_v_lowpass_mmi(i32* %23, i32* %24, i32 4, i32 4)
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @put_h264_qpel4_hv_lowpass_mmi(i32* %26, i32* %27, i32 4, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ff_put_pixels4_l2_8_mmi(i32* %30, i32* %31, i32* %32, i32 %33, i32 4, i32 4, i32 4)
  ret void
}

declare dso_local i32 @copy_block4_mmi(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @put_h264_qpel4_v_lowpass_mmi(i32*, i32*, i32, i32) #1

declare dso_local i32 @put_h264_qpel4_hv_lowpass_mmi(i32*, i32*, i32, i32) #1

declare dso_local i32 @ff_put_pixels4_l2_8_mmi(i32*, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
