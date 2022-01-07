; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_config_input_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_config_input_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_11__**, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i8*, i32*, i32*, double*, i32, %struct.TYPE_17__, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Width and height of input videos must be same.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Inputs must be of same pixel format.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ssim_plane_16bit = common dso_local global i32 0, align 4
@ssim_plane = common dso_local global i32 0, align 4
@ssim_4x4xn_8bit = common dso_local global i32 0, align 4
@ssim_endn_8bit = common dso_local global i32 0, align 4
@ARCH_X86 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @config_input_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input_ref(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_14__* @av_pix_fmt_desc_get(i32 %11)
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  store i32 0, i32* %7, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %26, i64 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %33, i64 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %30, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %42, i64 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %49, i64 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %46, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %39, %1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 @av_log(%struct.TYPE_16__* %56, i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %2, align 4
  br label %317

61:                                               ; preds = %39
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %64, i64 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %71, i64 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %68, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %61
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = call i32 @av_log(%struct.TYPE_16__* %78, i32 %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %2, align 4
  br label %317

83:                                               ; preds = %61
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 10
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @ff_fill_rgba_map(i32 %86, i32 %89)
  %91 = icmp sge i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 82, i32 89
  %101 = trunc i32 %100 to i8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 %101, i8* %105, align 1
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 71, i32 85
  %112 = trunc i32 %111 to i8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 %112, i8* %116, align 1
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 66, i32 86
  %123 = trunc i32 %122 to i8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  store i8 %123, i8* %127, align 1
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 3
  store i8 65, i8* %131, align 1
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @AV_CEIL_RSHIFT(i32 %134, i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32 %139, i32* %143, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  store i32 %139, i32* %147, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  store i32 %150, i32* %154, align 4
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 %150, i32* %158, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @AV_CEIL_RSHIFT(i32 %161, i32 %164)
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  store i32 %166, i32* %170, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  store i32 %166, i32* %174, align 4
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 3
  store i32 %177, i32* %181, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 4
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 %177, i32* %185, align 4
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %210, %83
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %213

192:                                              ; preds = %186
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %199, %206
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %7, align 4
  br label %210

210:                                              ; preds = %192
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %186

213:                                              ; preds = %186
  store i32 0, i32* %8, align 4
  br label %214

214:                                              ; preds = %247, %213
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %250

220:                                              ; preds = %214
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 3
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = sitofp i32 %227 to double
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 4
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = sitofp i32 %235 to double
  %237 = fmul double %228, %236
  %238 = load i32, i32* %7, align 4
  %239 = sitofp i32 %238 to double
  %240 = fdiv double %237, %239
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 5
  %243 = load double*, double** %242, align 8
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %243, i64 %245
  store double %240, double* %246, align 8
  br label %247

247:                                              ; preds = %220
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  br label %214

250:                                              ; preds = %214
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @SUM_LEN(i32 %253)
  %255 = mul nsw i32 2, %254
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i64 0
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp sgt i32 %261, 8
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i64 16, i64 16
  %265 = trunc i64 %264 to i32
  %266 = call i32 @av_mallocz_array(i32 %255, i32 %265)
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 9
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 9
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %250
  %274 = load i32, i32* @ENOMEM, align 4
  %275 = call i32 @AVERROR(i32 %274)
  store i32 %275, i32* %2, align 4
  br label %317

276:                                              ; preds = %250
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i64 0
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 1, %282
  %284 = sub nsw i32 %283, 1
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 6
  store i32 %284, i32* %286, align 8
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp sgt i32 %292, 8
  br i1 %293, label %294, label %296

294:                                              ; preds = %276
  %295 = load i32, i32* @ssim_plane_16bit, align 4
  br label %298

296:                                              ; preds = %276
  %297 = load i32, i32* @ssim_plane, align 4
  br label %298

298:                                              ; preds = %296, %294
  %299 = phi i32 [ %295, %294 ], [ %297, %296 ]
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 8
  store i32 %299, i32* %301, align 4
  %302 = load i32, i32* @ssim_4x4xn_8bit, align 4
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 7
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 1
  store i32 %302, i32* %305, align 4
  %306 = load i32, i32* @ssim_endn_8bit, align 4
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 7
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 0
  store i32 %306, i32* %309, align 4
  %310 = load i64, i64* @ARCH_X86, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %298
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 7
  %315 = call i32 @ff_ssim_init_x86(%struct.TYPE_17__* %314)
  br label %316

316:                                              ; preds = %312, %298
  store i32 0, i32* %2, align 4
  br label %317

317:                                              ; preds = %316, %273, %77, %55
  %318 = load i32, i32* %2, align 4
  ret i32 %318
}

declare dso_local %struct.TYPE_14__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @ff_fill_rgba_map(i32, i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_mallocz_array(i32, i32) #1

declare dso_local i32 @SUM_LEN(i32) #1

declare dso_local i32 @ff_ssim_init_x86(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
