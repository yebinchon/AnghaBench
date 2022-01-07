; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_comp_interp_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_comp_interp_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@PITCH_MAX = common dso_local global i32 0, align 4
@SUBFRAME_LEN = common dso_local global i32 0, align 4
@LPC_ORDER = common dso_local global i32 0, align 4
@FRAME_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*, i32*)* @comp_interp_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comp_interp_index(%struct.TYPE_3__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @PITCH_MAX, align 4
  %18 = load i32, i32* @SUBFRAME_LEN, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @LPC_ORDER, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* @FRAME_LEN, align 8
  %32 = load i32, i32* @PITCH_MAX, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call i32 @ff_g723_1_scale_vector(i32* %27, i32 %30, i64 %34)
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @SUBFRAME_LEN, align 4
  %45 = mul nsw i32 %44, 2
  %46 = call i32 @autocorr_max(i32* %41, i32 %42, i32* %13, i32 %43, i32 %45, i32 -1)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @av_sat_add32(i32 %47, i32 32768)
  %49 = ashr i32 %48, 16
  store i32 %49, i32* %13, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @SUBFRAME_LEN, align 4
  %53 = mul nsw i32 %52, 2
  %54 = call i32 @ff_g723_1_dot_product(i32* %50, i32* %51, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @av_sat_add32(i32 %55, i32 32768)
  %57 = ashr i32 %56, 16
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %92

62:                                               ; preds = %4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* @SUBFRAME_LEN, align 4
  %74 = mul nsw i32 %73, 2
  %75 = call i32 @ff_g723_1_dot_product(i32* %67, i32* %72, i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @av_sat_add32(i32 %76, i32 32768)
  %78 = ashr i32 %77, 16
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %79, %81
  %83 = ashr i32 %82, 3
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = mul nsw i32 %85, %86
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %62
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %92

91:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %89, %61
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @ff_g723_1_scale_vector(i32*, i32, i64) #1

declare dso_local i32 @autocorr_max(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @av_sat_add32(i32, i32) #1

declare dso_local i32 @ff_g723_1_dot_product(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
