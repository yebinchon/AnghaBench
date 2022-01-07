; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc.c_qsv_retrieve_enc_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc.c_qsv_retrieve_enc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_30__, i32, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_35__, i32** }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_37__ = type { i32, i32, i32*, i32*, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32 }

@MFX_EXTBUFF_CODING_OPTION_SPSPPS = common dso_local global i32 0, align 4
@MFX_EXTBUFF_CODING_OPTION = common dso_local global i32 0, align 4
@QSV_HAVE_CO2 = common dso_local global i32 0, align 4
@QSV_HAVE_CO3 = common dso_local global i32 0, align 4
@QSV_HAVE_CO_VPS = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Error calling GetVideoParam\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No extradata returned from libmfx.\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_CODEC_ID_HEVC = common dso_local global i64 0, align 8
@MFX_EXTBUFF_CODING_OPTION2 = common dso_local global i32 0, align 4
@MFX_EXTBUFF_CODING_OPTION3 = common dso_local global i32 0, align 4
@MFX_EXTBUFF_CODING_OPTION_VPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*)* @qsv_retrieve_enc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qsv_retrieve_enc_params(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca [128 x i32], align 16
  %8 = alloca [128 x i32], align 16
  %9 = alloca %struct.TYPE_37__, align 8
  %10 = alloca %struct.TYPE_25__, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  store i32 512, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  store i32 512, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %21 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 3
  %23 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  store i32* %23, i32** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  store i32 32, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 1
  %27 = load i32, i32* @MFX_EXTBUFF_CODING_OPTION_SPSPPS, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  store i32 8, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 1
  %31 = load i32, i32* @MFX_EXTBUFF_CODING_OPTION, align 4
  store i32 %31, i32* %30, align 4
  %32 = load i32, i32* @QSV_HAVE_CO2, align 4
  %33 = add nsw i32 2, %32
  %34 = load i32, i32* @QSV_HAVE_CO3, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @QSV_HAVE_CO_VPS, align 4
  %37 = add nsw i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %11, align 8
  %40 = alloca i32*, i64 %38, align 16
  store i64 %38, i64* %12, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %47 = bitcast %struct.TYPE_37__* %9 to i32*
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32*, i32** %40, i64 %50
  store i32* %47, i32** %51, align 8
  %52 = bitcast %struct.TYPE_25__* %10 to i32*
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32*, i32** %40, i64 %55
  store i32* %52, i32** %56, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 2
  store i32** %40, i32*** %59, align 8
  %60 = load i32, i32* %15, align 4
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 2
  %69 = call i32 @MFXVideoENCODE_GetVideoParam(i32 %66, %struct.TYPE_30__* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %2
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @ff_qsv_print_error(%struct.TYPE_27__* %73, i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %203

76:                                               ; preds = %2
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %81, %86
  %88 = mul nsw i32 %87, 1000
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %76
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97, %76
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %103 = load i32, i32* @AV_LOG_ERROR, align 4
  %104 = call i32 @av_log(%struct.TYPE_27__* %102, i32 %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %105, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %203

106:                                              ; preds = %97, %94
  %107 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %109, %111
  %113 = add nsw i32 %108, %112
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %120 = add nsw i32 %118, %119
  %121 = call i32 @av_malloc(i32 %120)
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %106
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = call i32 @AVERROR(i32 %129)
  store i32 %130, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %203

131:                                              ; preds = %106
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  %137 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %138 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @memcpy(i32 %136, i32* %137, i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %131
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %150, %151
  %153 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %154 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @memcpy(i32 %152, i32* %153, i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %147, %131
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %164, %167
  %169 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %170 = call i32 @memset(i32 %168, i32 0, i32 %169)
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %172 = call %struct.TYPE_28__* @ff_add_cpb_side_data(%struct.TYPE_27__* %171)
  store %struct.TYPE_28__* %172, %struct.TYPE_28__** %6, align 8
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %174 = icmp ne %struct.TYPE_28__* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %161
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = call i32 @AVERROR(i32 %176)
  store i32 %177, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %203

178:                                              ; preds = %161
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %201 = getelementptr inbounds i32*, i32** %40, i64 1
  %202 = call i32 @dump_video_param(%struct.TYPE_27__* %199, %struct.TYPE_26__* %200, i32** %201)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %17, align 4
  br label %203

203:                                              ; preds = %178, %175, %128, %101, %72
  %204 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MFXVideoENCODE_GetVideoParam(i32, %struct.TYPE_30__*) #2

declare dso_local i32 @ff_qsv_print_error(%struct.TYPE_27__*, i32, i8*) #2

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*) #2

declare dso_local i32 @av_malloc(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local %struct.TYPE_28__* @ff_add_cpb_side_data(%struct.TYPE_27__*) #2

declare dso_local i32 @dump_video_param(%struct.TYPE_27__*, %struct.TYPE_26__*, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
