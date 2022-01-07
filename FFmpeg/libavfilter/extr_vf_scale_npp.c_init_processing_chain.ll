; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale_npp.c_init_processing_chain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_scale_npp.c_init_processing_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_14__**, %struct.TYPE_15__**, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_13__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No hw context provided on input\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported input format: %s\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Unsupported output format: %s\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@STAGE_RESIZE = common dso_local global i64 0, align 8
@NPPI_INTER_SUPER = common dso_local global i64 0, align 8
@NPPI_INTER_LANCZOS = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"super-sampling not supported for output dimensions, using lanczos instead.\0A\00", align 1
@NPPI_INTER_CUBIC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [74 x i8] c"super-sampling not supported for output dimensions, using cubic instead.\0A\00", align 1
@STAGE_DEINTERLEAVE = common dso_local global i64 0, align 8
@STAGE_INTERLEAVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32, i32, i32, i32)* @init_processing_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_processing_chain(%struct.TYPE_20__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %12, align 8
  store i32 -1, i32* %20, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %26, i64 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %5
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %33, i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %6, align 4
  br label %419

38:                                               ; preds = %5
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %41, i64 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %48, %struct.TYPE_19__** %13, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load i32, i32* %14, align 4
  %59 = zext i32 %58 to i64
  br label %64

60:                                               ; preds = %38
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i64 [ %59, %57 ], [ %63, %60 ]
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @format_is_supported(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @av_get_pix_fmt_name(i32 %73)
  %75 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %71, i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @ENOSYS, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %6, align 4
  br label %419

78:                                               ; preds = %64
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @format_is_supported(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %84 = load i32, i32* @AV_LOG_ERROR, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @av_get_pix_fmt_name(i32 %85)
  %87 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %83, i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ENOSYS, align 4
  %89 = call i32 @AVERROR(i32 %88)
  store i32 %89, i32* %6, align 4
  br label %419

90:                                               ; preds = %78
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @get_deinterleaved_format(i32 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @get_deinterleaved_format(i32 %93)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %16, align 4
  %96 = zext i32 %95 to i64
  %97 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %17, align 4
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %99, %90
  %105 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %105, i32* %6, align 4
  br label %419

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %167

118:                                              ; preds = %114, %110, %106
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = load i64, i64* @STAGE_RESIZE, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @NPPI_INTER_SUPER, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %118
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i64, i64* @NPPI_INTER_LANCZOS, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %143 = load i32, i32* @AV_LOG_WARNING, align 4
  %144 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %142, i32 %143, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  br label %145

145:                                              ; preds = %138, %134, %130, %118
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @NPPI_INTER_SUPER, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %166

151:                                              ; preds = %145
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %155, %151
  %160 = load i64, i64* @NPPI_INTER_CUBIC, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %164 = load i32, i32* @AV_LOG_WARNING, align 4
  %165 = call i32 (%struct.TYPE_20__*, i32, i8*, ...) @av_log(%struct.TYPE_20__* %163, i32 %164, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  br label %166

166:                                              ; preds = %159, %155, %145
  br label %167

167:                                              ; preds = %166, %114
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = load i64, i64* @STAGE_RESIZE, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %167
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %176, %167
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %211, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %16, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %194, align 8
  %196 = load i64, i64* @STAGE_DEINTERLEAVE, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  br label %199

199:                                              ; preds = %192, %188
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* %17, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %205, align 8
  %207 = load i64, i64* @STAGE_INTERLEAVE, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %203, %199
  br label %211

211:                                              ; preds = %210, %183
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %214, align 8
  %216 = load i64, i64* @STAGE_DEINTERLEAVE, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  store i32 %212, i32* %218, align 4
  %219 = load i32, i32* %16, align 4
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %221, align 8
  %223 = load i64, i64* @STAGE_DEINTERLEAVE, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %224, i32 0, i32 2
  store i32 %219, i32* %225, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = load i64, i64* @STAGE_DEINTERLEAVE, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i64 0
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  store i32 %226, i32* %235, align 4
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %238, align 8
  %240 = load i64, i64* @STAGE_DEINTERLEAVE, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 4
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i64 0
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  store i32 %236, i32* %245, align 4
  %246 = load i32, i32* %16, align 4
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %248, align 8
  %250 = load i64, i64* @STAGE_RESIZE, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 1
  store i32 %246, i32* %252, align 4
  %253 = load i32, i32* %17, align 4
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %255, align 8
  %257 = load i64, i64* @STAGE_RESIZE, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 2
  store i32 %253, i32* %259, align 8
  %260 = load i32, i32* %8, align 4
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 3
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %262, align 8
  %264 = load i64, i64* @STAGE_RESIZE, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 4
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i64 0
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  store i32 %260, i32* %269, align 4
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %272, align 8
  %274 = load i64, i64* @STAGE_RESIZE, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 4
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 1
  store i32 %270, i32* %279, align 4
  %280 = load i32, i32* %10, align 4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 3
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %282, align 8
  %284 = load i64, i64* @STAGE_RESIZE, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 5
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 0
  store i32 %280, i32* %289, align 4
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %292, align 8
  %294 = load i64, i64* @STAGE_RESIZE, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 5
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i64 0
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 1
  store i32 %290, i32* %299, align 4
  %300 = load i32, i32* %17, align 4
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %302, align 8
  %304 = load i64, i64* @STAGE_INTERLEAVE, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %305, i32 0, i32 1
  store i32 %300, i32* %306, align 4
  %307 = load i32, i32* %15, align 4
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %309, align 8
  %311 = load i64, i64* @STAGE_INTERLEAVE, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %312, i32 0, i32 2
  store i32 %307, i32* %313, align 8
  %314 = load i32, i32* %10, align 4
  %315 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %316, align 8
  %318 = load i64, i64* @STAGE_INTERLEAVE, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 4
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i64 0
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 0
  store i32 %314, i32* %323, align 4
  %324 = load i32, i32* %11, align 4
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 3
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %326, align 8
  %328 = load i64, i64* @STAGE_INTERLEAVE, align 8
  %329 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 4
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i64 0
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 0, i32 1
  store i32 %324, i32* %333, align 4
  store i32 0, i32* %18, align 4
  br label %334

334:                                              ; preds = %369, %211
  %335 = load i32, i32* %18, align 4
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 3
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %337, align 8
  %339 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_21__* %338)
  %340 = icmp slt i32 %335, %339
  br i1 %340, label %341, label %372

341:                                              ; preds = %334
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 3
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** %343, align 8
  %345 = load i32, i32* %18, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %352, label %351

351:                                              ; preds = %341
  br label %369

352:                                              ; preds = %341
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 3
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %354, align 8
  %356 = load i32, i32* %18, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i64 %357
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @init_stage(%struct.TYPE_21__* %358, i32 %361)
  store i32 %362, i32* %19, align 4
  %363 = load i32, i32* %19, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %352
  %366 = load i32, i32* %19, align 4
  store i32 %366, i32* %6, align 4
  br label %419

367:                                              ; preds = %352
  %368 = load i32, i32* %18, align 4
  store i32 %368, i32* %20, align 4
  br label %369

369:                                              ; preds = %367, %351
  %370 = load i32, i32* %18, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %18, align 4
  br label %334

372:                                              ; preds = %334
  %373 = load i32, i32* %20, align 4
  %374 = icmp sge i32 %373, 0
  br i1 %374, label %375, label %391

375:                                              ; preds = %372
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 3
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %377, align 8
  %379 = load i32, i32* %20, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 3
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %382, align 8
  %384 = call i8* @av_buffer_ref(%struct.TYPE_13__* %383)
  %385 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %387, i64 0
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 0
  store i8* %384, i8** %390, align 8
  br label %406

391:                                              ; preds = %372
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 1
  %394 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %394, i64 0
  %396 = load %struct.TYPE_15__*, %struct.TYPE_15__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 0
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %397, align 8
  %399 = call i8* @av_buffer_ref(%struct.TYPE_13__* %398)
  %400 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %402, i64 0
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 0
  store i8* %399, i8** %405, align 8
  br label %406

406:                                              ; preds = %391, %375
  %407 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %409, i64 0
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 0
  %413 = load i8*, i8** %412, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %418, label %415

415:                                              ; preds = %406
  %416 = load i32, i32* @ENOMEM, align 4
  %417 = call i32 @AVERROR(i32 %416)
  store i32 %417, i32* %6, align 4
  br label %419

418:                                              ; preds = %406
  store i32 0, i32* %6, align 4
  br label %419

419:                                              ; preds = %418, %415, %365, %104, %82, %70, %32
  %420 = load i32, i32* %6, align 4
  ret i32 %420
}

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @format_is_supported(i32) #1

declare dso_local i32 @av_get_pix_fmt_name(i32) #1

declare dso_local i32 @get_deinterleaved_format(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_21__*) #1

declare dso_local i32 @init_stage(%struct.TYPE_21__*, i32) #1

declare dso_local i8* @av_buffer_ref(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
