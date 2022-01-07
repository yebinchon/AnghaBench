; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_yuv2rgb.c_ff_yuv2rgb_get_func_ptr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_yuv2rgb.c_ff_yuv2rgb_get_func_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@ARCH_PPC = common dso_local global i64 0, align 8
@ARCH_X86 = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"No accelerated colorspace conversion found from %s to %s.\0A\00", align 1
@yuv2rgb_c_bgr48 = common dso_local global i32* null, align 8
@yuv2rgb_c_48 = common dso_local global i32* null, align 8
@CONFIG_SWSCALE_ALPHA = common dso_local global i32 0, align 4
@yuva2argb_c = common dso_local global i32* null, align 8
@yuva2rgba_c = common dso_local global i32* null, align 8
@yuv2rgb_c_32 = common dso_local global i32* null, align 8
@yuv2rgb_c_24_rgb = common dso_local global i32* null, align 8
@yuv2rgb_c_24_bgr = common dso_local global i32* null, align 8
@yuv2rgb_c_16_ordered_dither = common dso_local global i32* null, align 8
@yuv2rgb_c_15_ordered_dither = common dso_local global i32* null, align 8
@yuv2rgb_c_12_ordered_dither = common dso_local global i32* null, align 8
@yuv2rgb_c_8_ordered_dither = common dso_local global i32* null, align 8
@yuv2rgb_c_4_ordered_dither = common dso_local global i32* null, align 8
@yuv2rgb_c_4b_ordered_dither = common dso_local global i32* null, align 8
@yuv2rgb_c_1_ordered_dither = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_yuv2rgb_get_func_ptr(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load i64, i64* @ARCH_PPC, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32* @ff_yuv2rgb_init_ppc(%struct.TYPE_6__* %8)
  store i32* %9, i32** %4, align 8
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i64, i64* @ARCH_X86, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32* @ff_yuv2rgb_init_x86(%struct.TYPE_6__* %14)
  store i32* %15, i32** %4, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  store i32* %20, i32** %2, align 8
  br label %86

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = load i32, i32* @AV_LOG_WARNING, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @av_get_pix_fmt_name(i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @av_get_pix_fmt_name(i32 %30)
  %32 = call i32 @av_log(%struct.TYPE_6__* %22, i32 %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %85 [
    i32 145, label %36
    i32 144, label %36
    i32 134, label %38
    i32 133, label %38
    i32 149, label %40
    i32 150, label %40
    i32 128, label %52
    i32 139, label %52
    i32 137, label %67
    i32 148, label %69
    i32 130, label %71
    i32 141, label %71
    i32 131, label %73
    i32 142, label %73
    i32 135, label %75
    i32 146, label %75
    i32 129, label %77
    i32 140, label %77
    i32 136, label %79
    i32 147, label %79
    i32 132, label %81
    i32 143, label %81
    i32 138, label %83
  ]

36:                                               ; preds = %21, %21
  %37 = load i32*, i32** @yuv2rgb_c_bgr48, align 8
  store i32* %37, i32** %2, align 8
  br label %86

38:                                               ; preds = %21, %21
  %39 = load i32*, i32** @yuv2rgb_c_48, align 8
  store i32* %39, i32** %2, align 8
  br label %86

40:                                               ; preds = %21, %21
  %41 = load i32, i32* @CONFIG_SWSCALE_ALPHA, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @isALPHA(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32*, i32** @yuva2argb_c, align 8
  store i32* %50, i32** %2, align 8
  br label %86

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %21, %21, %51
  %53 = load i32, i32* @CONFIG_SWSCALE_ALPHA, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @isALPHA(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32*, i32** @yuva2rgba_c, align 8
  br label %65

63:                                               ; preds = %55, %52
  %64 = load i32*, i32** @yuv2rgb_c_32, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32* [ %62, %61 ], [ %64, %63 ]
  store i32* %66, i32** %2, align 8
  br label %86

67:                                               ; preds = %21
  %68 = load i32*, i32** @yuv2rgb_c_24_rgb, align 8
  store i32* %68, i32** %2, align 8
  br label %86

69:                                               ; preds = %21
  %70 = load i32*, i32** @yuv2rgb_c_24_bgr, align 8
  store i32* %70, i32** %2, align 8
  br label %86

71:                                               ; preds = %21, %21
  %72 = load i32*, i32** @yuv2rgb_c_16_ordered_dither, align 8
  store i32* %72, i32** %2, align 8
  br label %86

73:                                               ; preds = %21, %21
  %74 = load i32*, i32** @yuv2rgb_c_15_ordered_dither, align 8
  store i32* %74, i32** %2, align 8
  br label %86

75:                                               ; preds = %21, %21
  %76 = load i32*, i32** @yuv2rgb_c_12_ordered_dither, align 8
  store i32* %76, i32** %2, align 8
  br label %86

77:                                               ; preds = %21, %21
  %78 = load i32*, i32** @yuv2rgb_c_8_ordered_dither, align 8
  store i32* %78, i32** %2, align 8
  br label %86

79:                                               ; preds = %21, %21
  %80 = load i32*, i32** @yuv2rgb_c_4_ordered_dither, align 8
  store i32* %80, i32** %2, align 8
  br label %86

81:                                               ; preds = %21, %21
  %82 = load i32*, i32** @yuv2rgb_c_4b_ordered_dither, align 8
  store i32* %82, i32** %2, align 8
  br label %86

83:                                               ; preds = %21
  %84 = load i32*, i32** @yuv2rgb_c_1_ordered_dither, align 8
  store i32* %84, i32** %2, align 8
  br label %86

85:                                               ; preds = %21
  store i32* null, i32** %2, align 8
  br label %86

86:                                               ; preds = %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %49, %38, %36, %19
  %87 = load i32*, i32** %2, align 8
  ret i32* %87
}

declare dso_local i32* @ff_yuv2rgb_init_ppc(%struct.TYPE_6__*) #1

declare dso_local i32* @ff_yuv2rgb_init_x86(%struct.TYPE_6__*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32, i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @isALPHA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
