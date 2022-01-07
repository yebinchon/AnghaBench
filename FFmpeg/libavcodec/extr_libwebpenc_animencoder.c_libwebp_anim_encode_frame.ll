; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libwebpenc_animencoder.c_libwebp_anim_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libwebpenc_animencoder.c_libwebp_anim_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_24__, i32, %struct.TYPE_25__, %struct.TYPE_28__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"WebPAnimEncoderAssemble() failed with error: %d\0A\00", align 1
@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Encoding WebP frame failed with error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_30__*, i32*)* @libwebp_anim_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libwebp_anim_encode_frame(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, %struct.TYPE_30__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %7, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %10, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %20 = icmp ne %struct.TYPE_30__* %19, null
  br i1 %20, label %80, label %21

21:                                               ; preds = %4
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32*, i32** %9, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %5, align 4
  br label %146

28:                                               ; preds = %21
  %29 = bitcast %struct.TYPE_27__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 12, i1 false)
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @WebPAnimEncoderAssemble(i32 %32, %struct.TYPE_27__* %12)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %28
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ff_alloc_packet2(%struct.TYPE_28__* %37, %struct.TYPE_29__* %38, i32 %40, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %146

48:                                               ; preds = %36
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %51, i32 %53, i32 %55)
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 1, i32* %72, align 4
  store i32 0, i32* %5, align 4
  br label %146

73:                                               ; preds = %28
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %75 = load i32, i32* @AV_LOG_ERROR, align 4
  %76 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  %77 = call i32 @av_log(%struct.TYPE_28__* %74, i32 %75, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %5, align 4
  br label %146

80:                                               ; preds = %4
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %15, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %85 = call i32 @ff_libwebp_get_frame(%struct.TYPE_28__* %81, %struct.TYPE_24__* %83, %struct.TYPE_30__* %84, %struct.TYPE_30__** %15, %struct.TYPE_26__** %14)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %140

89:                                               ; preds = %80
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = mul nsw i32 %97, 1000
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %98, %102
  store i32 %103, i32* %13, align 4
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = call i32 @WebPAnimEncoderAdd(i32 %106, %struct.TYPE_26__* %107, i32 %108, i32* %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %89
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @av_log(%struct.TYPE_28__* %116, i32 %117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ff_libwebp_error_to_averror(i32 %124)
  store i32 %125, i32* %11, align 4
  br label %140

126:                                              ; preds = %89
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  store i32 %129, i32* %133, align 4
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  store i32 0, i32* %11, align 4
  %139 = load i32*, i32** %9, align 8
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %126, %115, %88
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %142 = call i32 @WebPPictureFree(%struct.TYPE_26__* %141)
  %143 = call i32 @av_freep(%struct.TYPE_26__** %14)
  %144 = call i32 @av_frame_free(%struct.TYPE_30__** %15)
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %140, %73, %48, %46, %26
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @WebPAnimEncoderAssemble(i32, %struct.TYPE_27__*) #2

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_libwebp_get_frame(%struct.TYPE_28__*, %struct.TYPE_24__*, %struct.TYPE_30__*, %struct.TYPE_30__**, %struct.TYPE_26__**) #2

declare dso_local i32 @WebPAnimEncoderAdd(i32, %struct.TYPE_26__*, i32, i32*) #2

declare dso_local i32 @ff_libwebp_error_to_averror(i32) #2

declare dso_local i32 @WebPPictureFree(%struct.TYPE_26__*) #2

declare dso_local i32 @av_freep(%struct.TYPE_26__**) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_30__**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
