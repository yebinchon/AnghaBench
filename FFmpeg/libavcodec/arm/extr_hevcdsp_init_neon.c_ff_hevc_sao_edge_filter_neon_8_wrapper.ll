; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/arm/extr_hevcdsp_init_neon.c_ff_hevc_sao_edge_filter_neon_8_wrapper.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/arm/extr_hevcdsp_init_neon.c_ff_hevc_sao_edge_filter_neon_8_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_sao_edge_filter_neon_8_wrapper.edge_idx = internal global [5 x i32] [i32 1, i32 2, i32 0, i32 3, i32 4], align 16
@ff_hevc_sao_edge_filter_neon_8_wrapper.pos = internal constant [4 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 -1], [2 x i32] [i32 1, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 -1], [2 x i32] [i32 -1, i32 1]]], align 16
@MAX_PB_SIZE = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hevc_sao_edge_filter_neon_8_wrapper(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32*, i32** %8, align 8
  store i32* %20, i32** %15, align 8
  %21 = load i32*, i32** %9, align 8
  store i32* %21, i32** %16, align 8
  %22 = load i32, i32* @MAX_PB_SIZE, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* @ff_hevc_sao_edge_filter_neon_8_wrapper.pos, i64 0, i64 %27
  %29 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %28, i64 0, i64 0
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* @ff_hevc_sao_edge_filter_neon_8_wrapper.pos, i64 0, i64 %33
  %35 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %34, i64 0, i64 0
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %19, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %31, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* @ff_hevc_sao_edge_filter_neon_8_wrapper.pos, i64 0, i64 %42
  %44 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %43, i64 0, i64 1
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %44, i64 0, i64 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x [2 x [2 x i32]]], [4 x [2 x [2 x i32]]]* @ff_hevc_sao_edge_filter_neon_8_wrapper.pos, i64 0, i64 %48
  %50 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %49, i64 0, i64 1
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %19, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %46, %54
  store i32 %55, i32* %18, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @ff_hevc_sao_edge_filter_neon_8(i32* %56, i32* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32* %64, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @ff_hevc_sao_edge_filter_neon_8_wrapper.edge_idx, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ff_hevc_sao_edge_filter_neon_8(i32*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
