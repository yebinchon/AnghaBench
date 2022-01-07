; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_dxva_get_decoder_guid.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2.c_dxva_get_decoder_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i64, i32 }

@ff_GUID_NULL = common dso_local global i32 0, align 4
@dxva_modes = common dso_local global %struct.TYPE_6__* null, align 8
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No decoder device for codec found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ff_DXVADDI_Intel_ModeH264_E = common dso_local global i32 0, align 4
@FF_DXVA2_WORKAROUND_INTEL_CLEARVIDEO = common dso_local global i32 0, align 4
@AV_PIX_FMT_D3D11 = common dso_local global i64 0, align 8
@AV_PIX_FMT_DXVA2_VLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32, i32*, i32*)* @dxva_get_decoder_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxva_get_decoder_guid(i32* %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.TYPE_7__* @DXVA_SHARED_CONTEXT(i32* %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %14, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = call i32 @dxva_list_guids_debug(i32* %21, i8* %22, i32 %23, i32* %24)
  %26 = load i32, i32* @ff_GUID_NULL, align 4
  %27 = load i32*, i32** %13, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %81, %6
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dxva_modes, align 8
  %30 = load i32, i32* %15, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %84

36:                                               ; preds = %28
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dxva_modes, align 8
  %38 = load i32, i32* %15, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %17, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %43 = call i32 @dxva_check_codec_compatibility(i32* %41, %struct.TYPE_6__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %81

46:                                               ; preds = %36
  store i32 0, i32* %16, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %16, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i64 @IsEqualGUID(i32* %54, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %66

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %16, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %47

66:                                               ; preds = %61, %47
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %81

71:                                               ; preds = %66
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  br label %84

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %70, %45
  %82 = load i32, i32* %15, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %15, align 4
  br label %28

84:                                               ; preds = %74, %28
  %85 = load i32*, i32** %13, align 8
  %86 = call i64 @IsEqualGUID(i32* %85, i32* @ff_GUID_NULL)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %91 = call i32 @av_log(i32* %89, i32 %90, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = call i32 @AVERROR(i32 %92)
  store i32 %93, i32* %7, align 4
  br label %105

94:                                               ; preds = %84
  %95 = load i32*, i32** %13, align 8
  %96 = call i64 @IsEqualGUID(i32* %95, i32* @ff_DXVADDI_Intel_ModeH264_E)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* @FF_DXVA2_WORKAROUND_INTEL_CLEARVIDEO, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %94
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %88
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_7__* @DXVA_SHARED_CONTEXT(i32*) #1

declare dso_local i32 @dxva_list_guids_debug(i32*, i8*, i32, i32*) #1

declare dso_local i32 @dxva_check_codec_compatibility(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
