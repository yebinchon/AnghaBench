; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i32, i32, %struct.TYPE_16__, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_19__** }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i32, i32, i32, i32, double, double*, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_16__, i64, i64, i64, i64, i8*, i8*, i8*, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@PTS_STEP = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"video: %dx%d %s %d/%d fps, bar_h = %d, axis_h = %d, sono_h = %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"fft_len = %d, cqt_len = %d.\0A\00", align 1
@M_PI = common dso_local global i32 0, align 4
@cqt_calc = common dso_local global i32 0, align 4
@draw_sono = common dso_local global i32 0, align 4
@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@draw_bar_rgb = common dso_local global i32 0, align 4
@draw_axis_rgb = common dso_local global i32 0, align 4
@update_sono_rgb = common dso_local global i32 0, align 4
@draw_bar_yuv = common dso_local global i32 0, align 4
@draw_axis_yuv = common dso_local global i32 0, align 4
@update_sono_yuv = common dso_local global i32 0, align 4
@ARCH_X86 = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"loading axis image failed, fallback to font rendering.\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"loading axis font failed, disable text drawing.\0A\00", align 1
@AV_PIX_FMT_YUV420P = common dso_local global i64 0, align 8
@AV_PIX_FMT_YUV422P = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"audio: %d Hz, step = %d + %d/%d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"fractional step.\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"audio: %d Hz, step = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.TYPE_17__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %4, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %16, i64 0
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %6, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = call i32 @common_uninit(%struct.TYPE_18__* %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 42
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = call i32 @av_make_q(i32 1, i32 1)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 15
  %46 = bitcast %struct.TYPE_16__* %43 to i8*
  %47 = bitcast %struct.TYPE_16__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 15
  %50 = bitcast %struct.TYPE_16__* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @av_inv_q(i64 %51)
  %53 = load i32, i32* @PTS_STEP, align 4
  %54 = call i32 @av_make_q(i32 1, i32 %53)
  %55 = call i32 @av_mul_q(i32 %52, i32 %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = load i32, i32* @AV_LOG_INFO, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 42
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @av_get_pix_fmt_name(i64 %68)
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 15
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 41
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 27
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 24
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %58, i32 %59, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %69, i32 %73, i32 %77, i32 %80, i64 %83, i64 %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 39
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 38
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @create_freq_table(i32 %99, i32 %102, i32 %105)
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 40
  store i32 %106, i32* %108, align 4
  %109 = icmp ne i32 %106, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %1
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = call i32 @AVERROR(i32 %111)
  store i32 %112, i32* %2, align 4
  br label %554

113:                                              ; preds = %1
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = call i32 @init_volume(%struct.TYPE_18__* %114)
  store i32 %115, i32* %7, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %554

119:                                              ; preds = %113
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %122, %125
  %127 = call i32 @log2(i32 %126)
  %128 = call i32 @ceil(i32 %127)
  %129 = call i32 @FFMAX(i32 %128, i32 4)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = shl i32 1, %134
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %139 = load i32, i32* @AV_LOG_INFO, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %138, i32 %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %145)
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @av_fft_init(i32 %149, i32 0)
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 37
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @av_calloc(i32 %155, i32 1)
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 36
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, 64
  %163 = call i8* @av_calloc(i32 %162, i32 1)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 35
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @av_malloc_array(i32 %168, i32 1)
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 34
  store i8* %169, i8** %171, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 37
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %119
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 36
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 35
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 34
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %186, %181, %176, %119
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = call i32 @AVERROR(i32 %192)
  store i32 %193, i32* %2, align 4
  br label %554

194:                                              ; preds = %186
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 8
  %198 = sdiv i32 %197, 2
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 7
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 8
  %203 = load double, double* %202, align 8
  %204 = fcmp ogt double %203, 0.000000e+00
  br i1 %204, label %205, label %284

205:                                              ; preds = %194
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = sitofp i32 %211 to double
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 8
  %215 = load double, double* %214, align 8
  %216 = fmul double %212, %215
  %217 = fptosi double %216 to i32
  %218 = call i32 @ceil(i32 %217)
  %219 = call i32 @FFMIN(i32 %208, i32 %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 7
  store i32 %219, i32* %221, align 4
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 7
  %224 = load i32, i32* %223, align 4
  %225 = call i8* @av_malloc_array(i32 %224, i32 8)
  %226 = bitcast i8* %225 to double*
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 9
  store double* %226, double** %228, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 9
  %231 = load double*, double** %230, align 8
  %232 = icmp ne double* %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %205
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = call i32 @AVERROR(i32 %234)
  store i32 %235, i32* %2, align 4
  br label %554

236:                                              ; preds = %205
  store i32 0, i32* %8, align 4
  br label %237

237:                                              ; preds = %280, %236
  %238 = load i32, i32* %8, align 4
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 4
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %283

243:                                              ; preds = %237
  %244 = load i32, i32* @M_PI, align 4
  %245 = load i32, i32* %8, align 4
  %246 = mul nsw i32 %244, %245
  %247 = sitofp i32 %246 to double
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = sitofp i32 %250 to double
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 8
  %254 = load double, double* %253, align 8
  %255 = fmul double %251, %254
  %256 = fdiv double %247, %255
  store double %256, double* %9, align 8
  %257 = load double, double* %9, align 8
  %258 = fptosi double %257 to i32
  %259 = call double @cos(i32 %258)
  %260 = fmul double 4.873960e-01, %259
  %261 = fadd double 3.557680e-01, %260
  %262 = load double, double* %9, align 8
  %263 = fmul double 2.000000e+00, %262
  %264 = fptosi double %263 to i32
  %265 = call double @cos(i32 %264)
  %266 = fmul double 1.442320e-01, %265
  %267 = fadd double %261, %266
  %268 = load double, double* %9, align 8
  %269 = fmul double 3.000000e+00, %268
  %270 = fptosi double %269 to i32
  %271 = call double @cos(i32 %270)
  %272 = fmul double 1.260400e-02, %271
  %273 = fadd double %267, %272
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 9
  %276 = load double*, double** %275, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %276, i64 %278
  store double %273, double* %279, align 8
  br label %280

280:                                              ; preds = %243
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %8, align 4
  br label %237

283:                                              ; preds = %237
  br label %284

284:                                              ; preds = %283, %194
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 10
  store i32 1, i32* %286, align 8
  %287 = load i32, i32* @cqt_calc, align 4
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 33
  store i32 %287, i32* %289, align 8
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 32
  store i32* null, i32** %291, align 8
  %292 = load i32, i32* @draw_sono, align 4
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 31
  store i32 %292, i32* %294, align 4
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %310

300:                                              ; preds = %284
  %301 = load i32, i32* @draw_bar_rgb, align 4
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 30
  store i32 %301, i32* %303, align 8
  %304 = load i32, i32* @draw_axis_rgb, align 4
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 29
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* @update_sono_rgb, align 4
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 28
  store i32 %307, i32* %309, align 8
  br label %320

310:                                              ; preds = %284
  %311 = load i32, i32* @draw_bar_yuv, align 4
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 30
  store i32 %311, i32* %313, align 8
  %314 = load i32, i32* @draw_axis_yuv, align 4
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 29
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* @update_sono_yuv, align 4
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 28
  store i32 %317, i32* %319, align 8
  br label %320

320:                                              ; preds = %310, %300
  %321 = load i64, i64* @ARCH_X86, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %325 = call i32 @ff_showcqt_init_x86(%struct.TYPE_18__* %324)
  br label %326

326:                                              ; preds = %323, %320
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %328 = call i32 @init_cqt(%struct.TYPE_18__* %327)
  store i32 %328, i32* %7, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %326
  %331 = load i32, i32* %7, align 4
  store i32 %331, i32* %2, align 4
  br label %554

332:                                              ; preds = %326
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 27
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %394

337:                                              ; preds = %332
  %338 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %338, i32 0, i32 26
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %337
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %344 = call i32 @init_axis_empty(%struct.TYPE_18__* %343)
  store i32 %344, i32* %7, align 4
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %342
  %347 = load i32, i32* %7, align 4
  store i32 %347, i32* %2, align 4
  br label %554

348:                                              ; preds = %342
  br label %393

349:                                              ; preds = %337
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 25
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %377

354:                                              ; preds = %349
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %356 = call i64 @init_axis_from_file(%struct.TYPE_18__* %355)
  %357 = icmp slt i64 %356, 0
  br i1 %357, label %358, label %376

358:                                              ; preds = %354
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %360 = load i32, i32* @AV_LOG_WARNING, align 4
  %361 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %359, i32 %360, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %363 = call i64 @init_axis_from_font(%struct.TYPE_18__* %362)
  %364 = icmp slt i64 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %358
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %367 = load i32, i32* @AV_LOG_WARNING, align 4
  %368 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %366, i32 %367, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %370 = call i32 @init_axis_empty(%struct.TYPE_18__* %369)
  store i32 %370, i32* %7, align 4
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %365
  %373 = load i32, i32* %7, align 4
  store i32 %373, i32* %2, align 4
  br label %554

374:                                              ; preds = %365
  br label %375

375:                                              ; preds = %374, %358
  br label %376

376:                                              ; preds = %375, %354
  br label %392

377:                                              ; preds = %349
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %379 = call i64 @init_axis_from_font(%struct.TYPE_18__* %378)
  %380 = icmp slt i64 %379, 0
  br i1 %380, label %381, label %391

381:                                              ; preds = %377
  %382 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %383 = load i32, i32* @AV_LOG_WARNING, align 4
  %384 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %382, i32 %383, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %385 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %386 = call i32 @init_axis_empty(%struct.TYPE_18__* %385)
  store i32 %386, i32* %7, align 4
  %387 = icmp slt i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %381
  %389 = load i32, i32* %7, align 4
  store i32 %389, i32* %2, align 4
  br label %554

390:                                              ; preds = %381
  br label %391

391:                                              ; preds = %390, %377
  br label %392

392:                                              ; preds = %391, %376
  br label %393

393:                                              ; preds = %392, %348
  br label %394

394:                                              ; preds = %393, %332
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i32 0, i32 24
  %397 = load i64, i64* %396, align 8
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %430

399:                                              ; preds = %394
  %400 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @AV_PIX_FMT_YUV420P, align 8
  %404 = icmp eq i64 %402, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %399
  %406 = load i64, i64* @AV_PIX_FMT_YUV422P, align 8
  br label %411

407:                                              ; preds = %399
  %408 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  br label %411

411:                                              ; preds = %407, %405
  %412 = phi i64 [ %406, %405 ], [ %410, %407 ]
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %416, i32 0, i32 24
  %418 = load i64, i64* %417, align 8
  %419 = call i32 @alloc_frame_empty(i64 %412, i32 %415, i64 %418)
  %420 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %420, i32 0, i32 23
  store i32 %419, i32* %421, align 8
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 23
  %424 = load i32, i32* %423, align 8
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %429, label %426

426:                                              ; preds = %411
  %427 = load i32, i32* @ENOMEM, align 4
  %428 = call i32 @AVERROR(i32 %427)
  store i32 %428, i32* %2, align 4
  br label %554

429:                                              ; preds = %411
  br label %430

430:                                              ; preds = %429, %394
  %431 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = call i8* @av_malloc_array(i32 %433, i32 1)
  %435 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %436 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %435, i32 0, i32 22
  store i8* %434, i8** %436, align 8
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %438 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = call i8* @av_malloc_array(i32 %439, i32 1)
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i32 0, i32 21
  store i8* %440, i8** %442, align 8
  %443 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = call i8* @av_malloc_array(i32 %445, i32 1)
  %447 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %447, i32 0, i32 20
  store i8* %446, i8** %448, align 8
  %449 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %449, i32 0, i32 22
  %451 = load i8*, i8** %450, align 8
  %452 = icmp ne i8* %451, null
  br i1 %452, label %453, label %463

453:                                              ; preds = %430
  %454 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %455 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %454, i32 0, i32 21
  %456 = load i8*, i8** %455, align 8
  %457 = icmp ne i8* %456, null
  br i1 %457, label %458, label %463

458:                                              ; preds = %453
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 20
  %461 = load i8*, i8** %460, align 8
  %462 = icmp ne i8* %461, null
  br i1 %462, label %466, label %463

463:                                              ; preds = %458, %453, %430
  %464 = load i32, i32* @ENOMEM, align 4
  %465 = call i32 @AVERROR(i32 %464)
  store i32 %465, i32* %2, align 4
  br label %554

466:                                              ; preds = %458
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 19
  store i64 0, i64* %468, align 8
  %469 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %469, i32 0, i32 18
  store i64 0, i64* %470, align 8
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %471, i32 0, i32 17
  store i64 0, i64* %472, align 8
  %473 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i32 0, i32 7
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 11
  store i32 %475, i32* %477, align 4
  %478 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %479 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %478, i32 0, i32 16
  store i64 0, i64* %479, align 8
  %480 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %480, i32 0, i32 14
  %482 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 2
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %485, i32 0, i32 12
  %487 = load i32, i32* %486, align 8
  %488 = call i32 @av_make_q(i32 %484, i32 %487)
  %489 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %490 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %489, i32 0, i32 15
  %491 = bitcast %struct.TYPE_16__* %490 to i64*
  %492 = load i64, i64* %491, align 8
  %493 = call i64 @av_div_q(i32 %488, i64 %492)
  %494 = bitcast %struct.TYPE_17__* %10 to i64*
  store i64 %493, i64* %494, align 4
  %495 = bitcast %struct.TYPE_17__* %481 to i8*
  %496 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %495, i8* align 4 %496, i64 8, i1 false)
  %497 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %497, i32 0, i32 14
  %499 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %501, i32 0, i32 14
  %503 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = sdiv i32 %500, %504
  %506 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %507 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %506, i32 0, i32 13
  store i32 %505, i32* %507, align 4
  %508 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %509 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %508, i32 0, i32 14
  %510 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %513 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %512, i32 0, i32 14
  %514 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 8
  %516 = srem i32 %515, %511
  store i32 %516, i32* %514, align 8
  %517 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %517, i32 0, i32 14
  %519 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %543

522:                                              ; preds = %466
  %523 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %524 = load i32, i32* @AV_LOG_INFO, align 4
  %525 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %526 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %525, i32 0, i32 2
  %527 = load i32, i32* %526, align 8
  %528 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %529 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %528, i32 0, i32 13
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %531, i32 0, i32 14
  %533 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %536 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %535, i32 0, i32 14
  %537 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %523, i32 %524, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %527, i32 %530, i32 %534, i32 %538)
  %540 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %541 = load i32, i32* @AV_LOG_WARNING, align 4
  %542 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %540, i32 %541, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %553

543:                                              ; preds = %466
  %544 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %545 = load i32, i32* @AV_LOG_INFO, align 4
  %546 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %547 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %546, i32 0, i32 2
  %548 = load i32, i32* %547, align 8
  %549 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %550 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %549, i32 0, i32 13
  %551 = load i32, i32* %550, align 4
  %552 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %544, i32 %545, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %548, i32 %551)
  br label %553

553:                                              ; preds = %543, %522
  store i32 0, i32* %2, align 4
  br label %554

554:                                              ; preds = %553, %463, %426, %388, %372, %346, %330, %233, %191, %117, %110
  %555 = load i32, i32* %2, align 4
  ret i32 %555
}

declare dso_local i32 @common_uninit(%struct.TYPE_18__*) #1

declare dso_local i32 @av_make_q(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_mul_q(i32, i32) #1

declare dso_local i32 @av_inv_q(i64) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @av_get_pix_fmt_name(i64) #1

declare dso_local i32 @create_freq_table(i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @init_volume(%struct.TYPE_18__*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @ceil(i32) #1

declare dso_local i32 @log2(i32) #1

declare dso_local i32 @av_fft_init(i32, i32) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local double @cos(i32) #1

declare dso_local i32 @ff_showcqt_init_x86(%struct.TYPE_18__*) #1

declare dso_local i32 @init_cqt(%struct.TYPE_18__*) #1

declare dso_local i32 @init_axis_empty(%struct.TYPE_18__*) #1

declare dso_local i64 @init_axis_from_file(%struct.TYPE_18__*) #1

declare dso_local i64 @init_axis_from_font(%struct.TYPE_18__*) #1

declare dso_local i32 @alloc_frame_empty(i64, i32, i64) #1

declare dso_local i64 @av_div_q(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
