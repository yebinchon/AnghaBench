; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-flac-test.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-flac-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_5POINT1_BACK = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_SURROUND = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO_DOWNMIX = common dso_local global i32 0, align 4
@__const.main.sample_rates = private unnamed_addr constant [4 x i32] [i32 8000, i32 44100, i32 48000, i32 192000], align 16
@AV_CODEC_ID_FLAC = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't find encoder\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't find decoder\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %11 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  %13 = load i32, i32* @AV_CH_LAYOUT_5POINT1_BACK, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* @AV_CH_LAYOUT_SURROUND, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i32, i32* @AV_CH_LAYOUT_STEREO_DOWNMIX, align 4
  store i32 %17, i32* %16, align 4
  %18 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([4 x i32]* @__const.main.sample_rates to i8*), i64 16, i1 false)
  %19 = load i32, i32* @AV_CODEC_ID_FLAC, align 4
  %20 = call i32* @avcodec_find_encoder(i32 %19)
  store i32* %20, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %0
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = call i32 @av_log(i32* null, i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %87

26:                                               ; preds = %0
  %27 = load i32, i32* @AV_CODEC_ID_FLAC, align 4
  %28 = call i32* @avcodec_find_decoder(i32 %27)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @AV_LOG_ERROR, align 4
  %33 = call i32 @av_log(i32* null, i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %87

34:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %83, %34
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %38 = call i32 @FF_ARRAY_ELEMS(i32* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %79, %40
  %42 = load i32, i32* %9, align 4
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %44 = call i32 @FF_ARRAY_ELEMS(i32* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %41
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @init_encoder(i32* %47, i32** %4, i32 %51, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32 1, i32* %1, align 4
  br label %87

59:                                               ; preds = %46
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @init_decoder(i32* %60, i32** %5, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 1, i32* %1, align 4
  br label %87

68:                                               ; preds = %59
  %69 = load i32*, i32** %2, align 8
  %70 = load i32*, i32** %3, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i64 @run_test(i32* %69, i32* %70, i32* %71, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %1, align 4
  br label %87

76:                                               ; preds = %68
  %77 = call i32 @close_encoder(i32** %4)
  %78 = call i32 @close_decoder(i32** %5)
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %41

82:                                               ; preds = %41
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %35

86:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %87

87:                                               ; preds = %86, %75, %67, %58, %31, %23
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @avcodec_find_encoder(i32) #2

declare dso_local i32 @av_log(i32*, i32, i8*) #2

declare dso_local i32* @avcodec_find_decoder(i32) #2

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #2

declare dso_local i64 @init_encoder(i32*, i32**, i32, i32) #2

declare dso_local i64 @init_decoder(i32*, i32**, i32) #2

declare dso_local i64 @run_test(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @close_encoder(i32**) #2

declare dso_local i32 @close_decoder(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
