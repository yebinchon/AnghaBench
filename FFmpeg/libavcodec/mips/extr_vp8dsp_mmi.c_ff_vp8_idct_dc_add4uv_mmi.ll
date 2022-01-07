; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8dsp_mmi.c_ff_vp8_idct_dc_add4uv_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8dsp_mmi.c_ff_vp8_idct_dc_add4uv_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_idct_dc_add4uv_mmi(i32* %0, [16 x i32]* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i32]*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store [16 x i32]* %1, [16 x i32]** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = mul nsw i32 %8, 0
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load [16 x i32]*, [16 x i32]** %5, align 8
  %14 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0
  %15 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ff_vp8_idct_dc_add_mmi(i32* %12, i32* %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 0
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load [16 x i32]*, [16 x i32]** %5, align 8
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 1
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %25, i64 0, i64 0
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ff_vp8_idct_dc_add_mmi(i32* %23, i32* %26, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load [16 x i32]*, [16 x i32]** %5, align 8
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %35, i64 2
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 0
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ff_vp8_idct_dc_add_mmi(i32* %34, i32* %37, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load [16 x i32]*, [16 x i32]** %5, align 8
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %46, i64 3
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %47, i64 0, i64 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @ff_vp8_idct_dc_add_mmi(i32* %45, i32* %48, i32 %49)
  ret void
}

declare dso_local i32 @ff_vp8_idct_dc_add_mmi(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
