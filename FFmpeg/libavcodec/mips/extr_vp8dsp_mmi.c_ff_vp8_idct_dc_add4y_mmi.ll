; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8dsp_mmi.c_ff_vp8_idct_dc_add4y_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8dsp_mmi.c_ff_vp8_idct_dc_add4y_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_idct_dc_add4y_mmi(i32* %0, [16 x i32]* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i32]*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store [16 x i32]* %1, [16 x i32]** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load [16 x i32]*, [16 x i32]** %5, align 8
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ff_vp8_idct_dc_add_mmi(i32* %8, i32* %11, i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  %16 = load [16 x i32]*, [16 x i32]** %5, align 8
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 1
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @ff_vp8_idct_dc_add_mmi(i32* %15, i32* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  %23 = load [16 x i32]*, [16 x i32]** %5, align 8
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %23, i64 2
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ff_vp8_idct_dc_add_mmi(i32* %22, i32* %25, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  %30 = load [16 x i32]*, [16 x i32]** %5, align 8
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 3
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %31, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ff_vp8_idct_dc_add_mmi(i32* %29, i32* %32, i32 %33)
  ret void
}

declare dso_local i32 @ff_vp8_idct_dc_add_mmi(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
