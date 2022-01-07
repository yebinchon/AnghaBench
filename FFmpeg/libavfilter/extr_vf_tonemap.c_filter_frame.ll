; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_25__*, %struct.TYPE_31__**, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_32__*, i32, %struct.TYPE_28__*, i32*, i32)* }
%struct.TYPE_28__ = type { double, %struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { double, i64, i32* }
%struct.TYPE_30__ = type { i64, i64, i32, i32*, i32, i64* }

@AVERROR_BUG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVCOL_TRC_UNSPECIFIED = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Untagged transfer, assuming linear light\0A\00", align 1
@AVCOL_TRC_LINEAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Tonemapping works on linear light only\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Computed signal peak: %f\0A\00", align 1
@luma_coefficients = common dso_local global i32* null, align 8
@AVCOL_SPC_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Missing color space information, \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unsupported color space '%s', \00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"desaturation is disabled\0A\00", align 1
@tonemap_slice = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_30__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_28__, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  store %struct.TYPE_32__* %19, %struct.TYPE_32__** %6, align 8
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %21, align 8
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %7, align 8
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %25, i64 0
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  store %struct.TYPE_31__* %27, %struct.TYPE_31__** %8, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_29__* @av_pix_fmt_desc_get(i32 %30)
  store %struct.TYPE_29__* %31, %struct.TYPE_29__** %11, align 8
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_29__* @av_pix_fmt_desc_get(i32 %34)
  store %struct.TYPE_29__* %35, %struct.TYPE_29__** %12, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  store double %38, double* %16, align 8
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %40 = icmp ne %struct.TYPE_29__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %43 = icmp ne %struct.TYPE_29__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41, %2
  %45 = call i32 @av_frame_free(%struct.TYPE_30__** %5)
  %46 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %46, i32* %3, align 4
  br label %290

47:                                               ; preds = %41
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.TYPE_30__* @ff_get_video_buffer(%struct.TYPE_31__* %48, i32 %51, i32 %54)
  store %struct.TYPE_30__* %55, %struct.TYPE_30__** %10, align 8
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %57 = icmp ne %struct.TYPE_30__* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %47
  %59 = call i32 @av_frame_free(%struct.TYPE_30__** %5)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %290

62:                                               ; preds = %47
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %65 = call i32 @av_frame_copy_props(%struct.TYPE_30__* %63, %struct.TYPE_30__* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = call i32 @av_frame_free(%struct.TYPE_30__** %5)
  %70 = call i32 @av_frame_free(%struct.TYPE_30__** %10)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %3, align 4
  br label %290

72:                                               ; preds = %62
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AVCOL_TRC_UNSPECIFIED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %80 = load i32, i32* @AV_LOG_WARNING, align 4
  %81 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %79, i32 %80, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %82 = load i64, i64* @AVCOL_TRC_LINEAR, align 8
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %96

85:                                               ; preds = %72
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AVCOL_TRC_LINEAR, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %93 = load i32, i32* @AV_LOG_WARNING, align 4
  %94 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %92, i32 %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %78
  %97 = load double, double* %16, align 8
  %98 = fcmp une double %97, 0.000000e+00
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %101 = call double @ff_determine_signal_peak(%struct.TYPE_30__* %100)
  store double %101, double* %16, align 8
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %103 = load i32, i32* @AV_LOG_DEBUG, align 4
  %104 = load double, double* %16, align 8
  %105 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %102, i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), double %104)
  br label %106

106:                                              ; preds = %99, %96
  %107 = load i32*, i32** @luma_coefficients, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %159

118:                                              ; preds = %106
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @AVCOL_SPC_UNSPECIFIED, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %159, label %129

129:                                              ; preds = %124, %118
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @AVCOL_SPC_UNSPECIFIED, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %137 = load i32, i32* @AV_LOG_WARNING, align 4
  %138 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %136, i32 %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %153

139:                                              ; preds = %129
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %146 = load i32, i32* @AV_LOG_WARNING, align 4
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @av_color_space_name(i64 %149)
  %151 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %145, i32 %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %144, %139
  br label %153

153:                                              ; preds = %152, %135
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %155 = load i32, i32* @AV_LOG_WARNING, align 4
  %156 = call i32 (%struct.TYPE_27__*, i32, i8*, ...) @av_log(%struct.TYPE_27__* %154, i32 %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 1
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %153, %124, %106
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 3
  store %struct.TYPE_30__* %160, %struct.TYPE_30__** %161, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 2
  store %struct.TYPE_30__* %162, %struct.TYPE_30__** %163, align 8
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 1
  store %struct.TYPE_29__* %164, %struct.TYPE_29__** %165, align 8
  %166 = load double, double* %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %9, i32 0, i32 0
  store double %166, double* %167, align 8
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_32__*, i32, %struct.TYPE_28__*, i32*, i32)*, i32 (%struct.TYPE_32__*, i32, %struct.TYPE_28__*, i32*, i32)** %171, align 8
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %174 = load i32, i32* @tonemap_slice, align 4
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %179 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_32__* %178)
  %180 = call i32 @FFMIN(i32 %177, i32 %179)
  %181 = call i32 %172(%struct.TYPE_32__* %173, i32 %174, %struct.TYPE_28__* %9, i32* null, i32 %180)
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %225

188:                                              ; preds = %159
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %225

195:                                              ; preds = %188
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 5
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 3
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 5
  %208 = load i64*, i64** %207, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 3
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 3
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @av_image_copy_plane(i64 %200, i32 %205, i64 %210, i32 %215, i32 %220, i32 %223)
  br label %282

225:                                              ; preds = %188, %159
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %281

232:                                              ; preds = %225
  store i32 0, i32* %15, align 4
  br label %233

233:                                              ; preds = %277, %232
  %234 = load i32, i32* %15, align 4
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %280

239:                                              ; preds = %233
  store i32 0, i32* %14, align 4
  br label %240

240:                                              ; preds = %273, %239
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %276

246:                                              ; preds = %240
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i32 0, i32 5
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 3
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i64 3
  %257 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 %252, %258
  %260 = sext i32 %259 to i64
  %261 = add nsw i64 %251, %260
  %262 = load i32, i32* %15, align 4
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i32 0, i32 3
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 3
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 %262, %267
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %261, %269
  %271 = call i32 @av_float2int(float 1.000000e+00)
  %272 = call i32 @AV_WN32(i64 %270, i32 %271)
  br label %273

273:                                              ; preds = %246
  %274 = load i32, i32* %14, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  br label %240

276:                                              ; preds = %240
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %15, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %15, align 4
  br label %233

280:                                              ; preds = %233
  br label %281

281:                                              ; preds = %280, %225
  br label %282

282:                                              ; preds = %281, %195
  %283 = call i32 @av_frame_free(%struct.TYPE_30__** %5)
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %285 = load double, double* %16, align 8
  %286 = call i32 @ff_update_hdr_metadata(%struct.TYPE_30__* %284, double %285)
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %288 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %289 = call i32 @ff_filter_frame(%struct.TYPE_31__* %287, %struct.TYPE_30__* %288)
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %282, %68, %58, %44
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local %struct.TYPE_29__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_30__**) #1

declare dso_local %struct.TYPE_30__* @ff_get_video_buffer(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local double @ff_determine_signal_peak(%struct.TYPE_30__*) #1

declare dso_local i32 @av_color_space_name(i64) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_32__*) #1

declare dso_local i32 @av_image_copy_plane(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @AV_WN32(i64, i32) #1

declare dso_local i32 @av_float2int(float) #1

declare dso_local i32 @ff_update_hdr_metadata(%struct.TYPE_30__*, double) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
