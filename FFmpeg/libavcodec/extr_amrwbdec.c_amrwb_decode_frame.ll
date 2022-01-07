; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_amrwb_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_amrwb_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64, double*, double**, i32*, i32*, i32*, float, i32*, float*, float*, i32, i32, i32, i32, i32, %struct.TYPE_26__, %struct.TYPE_33__, i32, i32, i32*, i32*, i32, i32, i32, i64, i32, %struct.TYPE_31__, i32 }
%struct.TYPE_26__ = type { i32 (float*, float*, i32, i32, i32, i32, i32)* }
%struct.TYPE_33__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__*, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32* }
%struct.TYPE_28__ = type { i32, i64* }

@AMRWB_SFR_SIZE = common dso_local global i32 0, align 4
@AMRWB_SFR_SIZE_16k = common dso_local global i32 0, align 4
@MODE_SID = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid mode %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@cf_sizes_wb = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Frame too small (%d bytes). Truncated file?\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Encountered a bad or corrupted frame\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SID mode\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@amr_bit_orderings_by_mode = common dso_local global i32* null, align 8
@MODE_6k60 = common dso_local global i64 0, align 8
@MIN_ISF_SPACING = common dso_local global i32 0, align 4
@LP_ORDER = common dso_local global i32 0, align 4
@ENERGY_MEAN = common dso_local global i32 0, align 4
@energy_pred_fac = common dso_local global i32 0, align 4
@UPS_MEM_SIZE = common dso_local global i64 0, align 8
@PREEMPH_FAC = common dso_local global i32 0, align 4
@hpf_zeros = common dso_local global i32 0, align 4
@hpf_31_poles = common dso_local global i32 0, align 4
@hpf_31_gain = common dso_local global i32 0, align 4
@UPS_FIR_SIZE = common dso_local global i64 0, align 8
@hpf_400_poles = common dso_local global i32 0, align 4
@hpf_400_gain = common dso_local global i32 0, align 4
@LP_ORDER_16k = common dso_local global i64 0, align 8
@bpf_6_7_coef = common dso_local global i32 0, align 4
@MODE_23k85 = common dso_local global i64 0, align 8
@lpf_7_coef = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i8*, i32*, %struct.TYPE_27__*)* @amrwb_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amrwb_decode_frame(%struct.TYPE_29__* %0, i8* %1, i32* %2, %struct.TYPE_27__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_30__*, align 8
  %34 = alloca float*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %9, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %36, align 8
  store %struct.TYPE_32__* %37, %struct.TYPE_32__** %10, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %39, %struct.TYPE_28__** %11, align 8
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 26
  store %struct.TYPE_31__* %41, %struct.TYPE_31__** %12, align 8
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %13, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %18, align 8
  %51 = alloca float, i64 %49, align 16
  store i64 %49, i64* %19, align 8
  %52 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %53 = zext i32 %52 to i64
  %54 = alloca float, i64 %53, align 16
  store i64 %53, i64* %25, align 8
  %55 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %56 = zext i32 %55 to i64
  %57 = alloca float, i64 %56, align 16
  store i64 %56, i64* %26, align 8
  %58 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %59 = zext i32 %58 to i64
  %60 = alloca float, i64 %59, align 16
  store i64 %59, i64* %27, align 8
  %61 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %62 = mul nsw i32 4, %61
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %67 = call i32 @ff_get_buffer(%struct.TYPE_29__* %65, %struct.TYPE_28__* %66, i32 0)
  store i32 %67, i32* %31, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %4
  %70 = load i32, i32* %31, align 4
  store i32 %70, i32* %5, align 4
  store i32 1, i32* %32, align 4
  br label %628

71:                                               ; preds = %4
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to float*
  store float* %77, float** %17, align 8
  %78 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @decode_mime_header(%struct.TYPE_32__* %78, i32* %79)
  store i32 %80, i32* %16, align 4
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MODE_SID, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %71
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %88 = load i32, i32* @AV_LOG_ERROR, align 4
  %89 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %87, i32 %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %93, i32* %5, align 4
  store i32 1, i32* %32, align 4
  br label %628

94:                                               ; preds = %71
  %95 = load i32*, i32** @cf_sizes_wb, align 8
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 7
  %102 = ashr i32 %101, 3
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %94
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %108, i32 %109, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %8, align 8
  store i32 0, i32* %112, align 4
  %113 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %113, i32* %5, align 4
  store i32 1, i32* %32, align 4
  br label %628

114:                                              ; preds = %94
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 27
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @MODE_SID, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119, %114
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @av_log(%struct.TYPE_29__* %126, i32 %127, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %125, %119
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MODE_SID, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %137 = call i32 @avpriv_request_sample(%struct.TYPE_29__* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %138, i32* %5, align 4
  store i32 1, i32* %32, align 4
  br label %628

139:                                              ; preds = %129
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 26
  %142 = bitcast %struct.TYPE_31__* %141 to i32*
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32*, i32** @amr_bit_orderings_by_mode, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ff_amr_bit_reorder(i32* %142, i32 24, i32* %146, i32 %152)
  %154 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MODE_6k60, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %139
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 1
  %165 = load double*, double** %164, align 8
  %166 = call i32 @decode_isf_indices_36b(i32 %162, double* %165)
  br label %175

167:                                              ; preds = %139
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 1
  %173 = load double*, double** %172, align 8
  %174 = call i32 @decode_isf_indices_46b(i32 %170, double* %173)
  br label %175

175:                                              ; preds = %167, %159
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 1
  %178 = load double*, double** %177, align 8
  %179 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %179, i32 0, i32 25
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @isf_add_mean_and_past(double* %178, i32 %181)
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 1
  %185 = load double*, double** %184, align 8
  %186 = load i32, i32* @MIN_ISF_SPACING, align 4
  %187 = load i32, i32* @LP_ORDER, align 4
  %188 = sub nsw i32 %187, 1
  %189 = call i32 @ff_set_min_dist_lsf(double* %185, i32 %186, i32 %188)
  %190 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 1
  %192 = load double*, double** %191, align 8
  %193 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 10
  %195 = load i32, i32* %194, align 8
  %196 = call float @stability_factor(double* %192, i32 %195)
  store float %196, float* %24, align 4
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 1
  %199 = load double*, double** %198, align 8
  %200 = load i32, i32* @LP_ORDER, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %199, i64 %202
  %204 = load double, double* %203, align 8
  %205 = fmul double %204, 2.000000e+00
  store double %205, double* %203, align 8
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %206, i32 0, i32 2
  %208 = load double**, double*** %207, align 8
  %209 = getelementptr inbounds double*, double** %208, i64 3
  %210 = load double*, double** %209, align 8
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 1
  %213 = load double*, double** %212, align 8
  %214 = load i32, i32* @LP_ORDER, align 4
  %215 = call i32 @ff_acelp_lsf2lspd(double* %210, double* %213, i32 %214)
  %216 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %216, i32 0, i32 24
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %236

220:                                              ; preds = %175
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 24
  store i64 0, i64* %222, align 8
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %223, i32 0, i32 11
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 2
  %228 = load double**, double*** %227, align 8
  %229 = getelementptr inbounds double*, double** %228, i64 3
  %230 = load double*, double** %229, align 8
  %231 = load i32, i32* @LP_ORDER, align 4
  %232 = sext i32 %231 to i64
  %233 = mul i64 %232, 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @memcpy(i32 %225, double* %230, i32 %234)
  br label %236

236:                                              ; preds = %220, %175
  %237 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %237, i32 0, i32 2
  %239 = load double**, double*** %238, align 8
  %240 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 11
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @interpolate_isp(double** %239, i32 %242)
  store i32 0, i32* %29, align 4
  br label %244

244:                                              ; preds = %264, %236
  %245 = load i32, i32* %29, align 4
  %246 = icmp slt i32 %245, 4
  br i1 %246, label %247, label %267

247:                                              ; preds = %244
  %248 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %248, i32 0, i32 2
  %250 = load double**, double*** %249, align 8
  %251 = load i32, i32* %29, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds double*, double** %250, i64 %252
  %254 = load double*, double** %253, align 8
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i32 0, i32 20
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %29, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @LP_ORDER, align 4
  %263 = call i32 @ff_amrwb_lsp2lpc(double* %254, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %247
  %265 = load i32, i32* %29, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %29, align 4
  br label %244

267:                                              ; preds = %244
  store i32 0, i32* %29, align 4
  br label %268

268:                                              ; preds = %598, %267
  %269 = load i32, i32* %29, align 4
  %270 = icmp slt i32 %269, 4
  br i1 %270, label %271, label %601

271:                                              ; preds = %268
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_30__*, %struct.TYPE_30__** %273, align 8
  %275 = load i32, i32* %29, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %274, i64 %276
  store %struct.TYPE_30__* %277, %struct.TYPE_30__** %33, align 8
  %278 = load float*, float** %17, align 8
  %279 = load i32, i32* %29, align 4
  %280 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %281 = mul nsw i32 %279, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds float, float* %278, i64 %282
  store float* %283, float** %34, align 8
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %285 = load %struct.TYPE_30__*, %struct.TYPE_30__** %33, align 8
  %286 = load i32, i32* %29, align 4
  %287 = call i32 @decode_pitch_vector(%struct.TYPE_32__* %284, %struct.TYPE_30__* %285, i32 %286)
  %288 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.TYPE_30__*, %struct.TYPE_30__** %33, align 8
  %292 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %33, align 8
  %295 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %298 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @decode_fixed_vector(i32* %290, i32 %293, i32 %296, i64 %299)
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %302 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = call i32 @pitch_sharpening(%struct.TYPE_32__* %301, i32* %304)
  %306 = load %struct.TYPE_30__*, %struct.TYPE_30__** %33, align 8
  %307 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %312, i32 0, i32 4
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = call i32 @decode_gains(i32 %308, i64 %311, float* %20, i32* %315)
  %317 = load float, float* %20, align 4
  %318 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %318, i32 0, i32 16
  %320 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %319, i32 0, i32 0
  %321 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %320, align 8
  %322 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %322, i32 0, i32 3
  %324 = load i32*, i32** %323, align 8
  %325 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %325, i32 0, i32 3
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %329 = call i32 %321(i32* %324, i32* %327, i32 %328)
  %330 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %331 = sdiv i32 %329, %330
  %332 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %332, i32 0, i32 23
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @ENERGY_MEAN, align 4
  %336 = load i32, i32* @energy_pred_fac, align 4
  %337 = call i32 @ff_amr_set_fixed_gain(float %317, i32 %331, i32 %334, i32 %335, i32 %336)
  %338 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %338, i32 0, i32 5
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  store i32 %337, i32* %341, align 4
  %342 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %342, i32 0, i32 22
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 4
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 0
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %351 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %350, i32 0, i32 3
  %352 = load i32*, i32** %351, align 8
  %353 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %353, i32 0, i32 5
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %358, i32 0, i32 16
  %360 = call float @voice_factor(i32 %344, i32 %349, i32* %352, i32 %357, %struct.TYPE_33__* %359)
  store float %360, float* %23, align 4
  %361 = load float, float* %23, align 4
  %362 = fpext float %361 to double
  %363 = fmul double %362, 2.500000e-01
  %364 = fadd double %363, 2.500000e-01
  %365 = fptrunc double %364 to float
  %366 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %366, i32 0, i32 6
  store float %365, float* %367, align 8
  store i32 0, i32* %30, align 4
  br label %368

368:                                              ; preds = %421, %271
  %369 = load i32, i32* %30, align 4
  %370 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %424

372:                                              ; preds = %368
  %373 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %373, i32 0, i32 4
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 0
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %378, i32 0, i32 7
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %30, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = mul nsw i32 %384, %377
  store i32 %385, i32* %383, align 4
  %386 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %387 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %386, i32 0, i32 5
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 0
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %392 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %391, i32 0, i32 3
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %30, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = mul nsw i32 %390, %397
  %399 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %400 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %399, i32 0, i32 7
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %30, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %405, %398
  store i32 %406, i32* %404, align 4
  %407 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %408 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %407, i32 0, i32 7
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %30, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @truncf(i32 %413)
  %415 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %415, i32 0, i32 7
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %30, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  store i32 %414, i32* %420, align 4
  br label %421

421:                                              ; preds = %372
  %422 = load i32, i32* %30, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %30, align 4
  br label %368

424:                                              ; preds = %368
  %425 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %425, i32 0, i32 5
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %430, i32 0, i32 21
  %432 = load float, float* %23, align 4
  %433 = load float, float* %24, align 4
  %434 = call float @noise_enhancer(i32 %429, i32* %431, float %432, float %433)
  store float %434, float* %22, align 4
  %435 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %436 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %437 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %436, i32 0, i32 3
  %438 = load i32*, i32** %437, align 8
  %439 = call float* @anti_sparseness(%struct.TYPE_32__* %435, i32* %438, float* %51)
  store float* %439, float** %21, align 8
  %440 = load float*, float** %21, align 8
  %441 = load float, float* %23, align 4
  %442 = call i32 @pitch_enhancer(float* %440, float %441)
  %443 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %444 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %445 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %444, i32 0, i32 20
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %29, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = load float, float* %22, align 4
  %452 = load float*, float** %21, align 8
  %453 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %454 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %453, i32 0, i32 19
  %455 = load i32*, i32** %454, align 8
  %456 = load i32, i32* @LP_ORDER, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  %459 = call i32 @synthesis(%struct.TYPE_32__* %443, i32 %450, float* %54, float %451, float* %452, i32* %458)
  %460 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %461 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %460, i32 0, i32 8
  %462 = load float*, float** %461, align 8
  %463 = load i64, i64* @UPS_MEM_SIZE, align 8
  %464 = getelementptr inbounds float, float* %462, i64 %463
  %465 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %466 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %465, i32 0, i32 19
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* @LP_ORDER, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, i32* %467, i64 %469
  %471 = load i32, i32* @PREEMPH_FAC, align 4
  %472 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %472, i32 0, i32 18
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @de_emphasis(float* %464, i32* %470, i32 %471, i32 %474)
  %476 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %477 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %476, i32 0, i32 15
  %478 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %477, i32 0, i32 0
  %479 = load i32 (float*, float*, i32, i32, i32, i32, i32)*, i32 (float*, float*, i32, i32, i32, i32, i32)** %478, align 8
  %480 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %481 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %480, i32 0, i32 8
  %482 = load float*, float** %481, align 8
  %483 = load i64, i64* @UPS_MEM_SIZE, align 8
  %484 = getelementptr inbounds float, float* %482, i64 %483
  %485 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %486 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %485, i32 0, i32 8
  %487 = load float*, float** %486, align 8
  %488 = load i64, i64* @UPS_MEM_SIZE, align 8
  %489 = getelementptr inbounds float, float* %487, i64 %488
  %490 = load i32, i32* @hpf_zeros, align 4
  %491 = load i32, i32* @hpf_31_poles, align 4
  %492 = load i32, i32* @hpf_31_gain, align 4
  %493 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %494 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %493, i32 0, i32 17
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %497 = call i32 %479(float* %484, float* %489, i32 %490, i32 %491, i32 %492, i32 %495, i32 %496)
  %498 = load float*, float** %34, align 8
  %499 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %500 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %499, i32 0, i32 8
  %501 = load float*, float** %500, align 8
  %502 = load i64, i64* @UPS_FIR_SIZE, align 8
  %503 = getelementptr inbounds float, float* %501, i64 %502
  %504 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %505 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %506 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %505, i32 0, i32 16
  %507 = call i32 @upsample_5_4(float* %498, float* %503, i32 %504, %struct.TYPE_33__* %506)
  %508 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %509 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %508, i32 0, i32 15
  %510 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %509, i32 0, i32 0
  %511 = load i32 (float*, float*, i32, i32, i32, i32, i32)*, i32 (float*, float*, i32, i32, i32, i32, i32)** %510, align 8
  %512 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %513 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %512, i32 0, i32 8
  %514 = load float*, float** %513, align 8
  %515 = load i64, i64* @UPS_MEM_SIZE, align 8
  %516 = getelementptr inbounds float, float* %514, i64 %515
  %517 = load i32, i32* @hpf_zeros, align 4
  %518 = load i32, i32* @hpf_400_poles, align 4
  %519 = load i32, i32* @hpf_400_gain, align 4
  %520 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %521 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %520, i32 0, i32 14
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %524 = call i32 %511(float* %60, float* %516, i32 %517, i32 %518, i32 %519, i32 %522, i32 %523)
  %525 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %526 = load %struct.TYPE_30__*, %struct.TYPE_30__** %33, align 8
  %527 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %530 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = call float @find_hb_gain(%struct.TYPE_32__* %525, float* %60, i32 %528, i32 %531)
  store float %532, float* %28, align 4
  %533 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %534 = load float, float* %28, align 4
  %535 = call i32 @scaled_hb_excitation(%struct.TYPE_32__* %533, float* %57, float* %54, float %534)
  %536 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %537 = load i32, i32* %29, align 4
  %538 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %539 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %538, i32 0, i32 9
  %540 = load float*, float** %539, align 8
  %541 = load i64, i64* @LP_ORDER_16k, align 8
  %542 = getelementptr inbounds float, float* %540, i64 %541
  %543 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %544 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %543, i32 0, i32 1
  %545 = load double*, double** %544, align 8
  %546 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %547 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %546, i32 0, i32 10
  %548 = load i32, i32* %547, align 8
  %549 = call i32 @hb_synthesis(%struct.TYPE_32__* %536, i32 %537, float* %542, float* %57, double* %545, i32 %548)
  %550 = load i32, i32* @bpf_6_7_coef, align 4
  %551 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %552 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %551, i32 0, i32 13
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %555 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %554, i32 0, i32 9
  %556 = load float*, float** %555, align 8
  %557 = load i64, i64* @LP_ORDER_16k, align 8
  %558 = getelementptr inbounds float, float* %556, i64 %557
  %559 = call i32 @hb_fir_filter(float* %60, i32 %550, i32 %553, float* %558)
  %560 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %561 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %560, i32 0, i32 0
  %562 = load i64, i64* %561, align 8
  %563 = load i64, i64* @MODE_23k85, align 8
  %564 = icmp eq i64 %562, %563
  br i1 %564, label %565, label %571

565:                                              ; preds = %424
  %566 = load i32, i32* @lpf_7_coef, align 4
  %567 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %568 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %567, i32 0, i32 12
  %569 = load i32, i32* %568, align 8
  %570 = call i32 @hb_fir_filter(float* %60, i32 %566, i32 %569, float* %60)
  br label %571

571:                                              ; preds = %565, %424
  store i32 0, i32* %30, align 4
  br label %572

572:                                              ; preds = %592, %571
  %573 = load i32, i32* %30, align 4
  %574 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %575 = icmp slt i32 %573, %574
  br i1 %575, label %576, label %595

576:                                              ; preds = %572
  %577 = load float*, float** %34, align 8
  %578 = load i32, i32* %30, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds float, float* %577, i64 %579
  %581 = load float, float* %580, align 4
  %582 = load i32, i32* %30, align 4
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds float, float* %60, i64 %583
  %585 = load float, float* %584, align 4
  %586 = fadd float %581, %585
  %587 = fmul float %586, 0x3F00000000000000
  %588 = load float*, float** %34, align 8
  %589 = load i32, i32* %30, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds float, float* %588, i64 %590
  store float %587, float* %591, align 4
  br label %592

592:                                              ; preds = %576
  %593 = load i32, i32* %30, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %30, align 4
  br label %572

595:                                              ; preds = %572
  %596 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %597 = call i32 @update_sub_state(%struct.TYPE_32__* %596)
  br label %598

598:                                              ; preds = %595
  %599 = load i32, i32* %29, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %29, align 4
  br label %268

601:                                              ; preds = %268
  %602 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %603 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %602, i32 0, i32 11
  %604 = load i32, i32* %603, align 4
  %605 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %606 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %605, i32 0, i32 2
  %607 = load double**, double*** %606, align 8
  %608 = getelementptr inbounds double*, double** %607, i64 3
  %609 = load double*, double** %608, align 8
  %610 = load i32, i32* @LP_ORDER, align 4
  %611 = sext i32 %610 to i64
  %612 = mul i64 %611, 8
  %613 = trunc i64 %612 to i32
  %614 = call i32 @memcpy(i32 %604, double* %609, i32 %613)
  %615 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %616 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %615, i32 0, i32 10
  %617 = load i32, i32* %616, align 8
  %618 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %619 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %618, i32 0, i32 1
  %620 = load double*, double** %619, align 8
  %621 = load i32, i32* @LP_ORDER, align 4
  %622 = sext i32 %621 to i64
  %623 = mul i64 %622, 4
  %624 = trunc i64 %623 to i32
  %625 = call i32 @memcpy(i32 %617, double* %620, i32 %624)
  %626 = load i32*, i32** %8, align 8
  store i32 1, i32* %626, align 4
  %627 = load i32, i32* %15, align 4
  store i32 %627, i32* %5, align 4
  store i32 1, i32* %32, align 4
  br label %628

628:                                              ; preds = %601, %135, %107, %86, %69
  %629 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %629)
  %630 = load i32, i32* %5, align 4
  ret i32 %630
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_29__*, %struct.TYPE_28__*, i32) #2

declare dso_local i32 @decode_mime_header(%struct.TYPE_32__*, i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_29__*, i32, i8*, ...) #2

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_29__*, i8*) #2

declare dso_local i32 @ff_amr_bit_reorder(i32*, i32, i32*, i32) #2

declare dso_local i32 @decode_isf_indices_36b(i32, double*) #2

declare dso_local i32 @decode_isf_indices_46b(i32, double*) #2

declare dso_local i32 @isf_add_mean_and_past(double*, i32) #2

declare dso_local i32 @ff_set_min_dist_lsf(double*, i32, i32) #2

declare dso_local float @stability_factor(double*, i32) #2

declare dso_local i32 @ff_acelp_lsf2lspd(double*, double*, i32) #2

declare dso_local i32 @memcpy(i32, double*, i32) #2

declare dso_local i32 @interpolate_isp(double**, i32) #2

declare dso_local i32 @ff_amrwb_lsp2lpc(double*, i32, i32) #2

declare dso_local i32 @decode_pitch_vector(%struct.TYPE_32__*, %struct.TYPE_30__*, i32) #2

declare dso_local i32 @decode_fixed_vector(i32*, i32, i32, i64) #2

declare dso_local i32 @pitch_sharpening(%struct.TYPE_32__*, i32*) #2

declare dso_local i32 @decode_gains(i32, i64, float*, i32*) #2

declare dso_local i32 @ff_amr_set_fixed_gain(float, i32, i32, i32, i32) #2

declare dso_local float @voice_factor(i32, i32, i32*, i32, %struct.TYPE_33__*) #2

declare dso_local i32 @truncf(i32) #2

declare dso_local float @noise_enhancer(i32, i32*, float, float) #2

declare dso_local float* @anti_sparseness(%struct.TYPE_32__*, i32*, float*) #2

declare dso_local i32 @pitch_enhancer(float*, float) #2

declare dso_local i32 @synthesis(%struct.TYPE_32__*, i32, float*, float, float*, i32*) #2

declare dso_local i32 @de_emphasis(float*, i32*, i32, i32) #2

declare dso_local i32 @upsample_5_4(float*, float*, i32, %struct.TYPE_33__*) #2

declare dso_local float @find_hb_gain(%struct.TYPE_32__*, float*, i32, i32) #2

declare dso_local i32 @scaled_hb_excitation(%struct.TYPE_32__*, float*, float*, float) #2

declare dso_local i32 @hb_synthesis(%struct.TYPE_32__*, i32, float*, float*, double*, i32) #2

declare dso_local i32 @hb_fir_filter(float*, i32, i32, float*) #2

declare dso_local i32 @update_sub_state(%struct.TYPE_32__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
