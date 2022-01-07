; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_amrnb_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_amrnb_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64, double*, i32*, i32, %struct.TYPE_39__, i32, %struct.TYPE_38__, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_37__, %struct.TYPE_36__, i32* }
%struct.TYPE_39__ = type { i32 (i32, i32, i32, double, double, i64)* }
%struct.TYPE_38__ = type { i32 (float*, float*, i32, i32, i32, i32, i32)* }
%struct.TYPE_37__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_36__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_40__ = type { i32, i32* }
%struct.TYPE_41__ = type { i64*, i32 }
%struct.TYPE_44__ = type { i64, i32 }

@AMR_SUBFRAME_SIZE = common dso_local global i32 0, align 4
@AMR_BLOCK_SIZE = common dso_local global i32 0, align 4
@NO_DATA = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Corrupt bitstream\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MODE_DTX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"dtx mode\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Note: libopencore_amrnb supports dtx\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@MODE_12k2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"The file is corrupted, pitch_lag = 0 is not allowed\0A\00", align 1
@energy_mean = common dso_local global i32* null, align 8
@energy_pred_fac = common dso_local global i32 0, align 4
@LP_FILTER_ORDER = common dso_local global i64 0, align 8
@highpass_zeros = common dso_local global i32 0, align 4
@highpass_poles = common dso_local global i32 0, align 4
@highpass_gain = common dso_local global i32 0, align 4
@AMR_SAMPLE_SCALE = common dso_local global i32 0, align 4
@frame_sizes_nb = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_42__*, i8*, i32*, %struct.TYPE_40__*)* @amrnb_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amrnb_decode_frame(%struct.TYPE_42__* %0, i8* %1, i32* %2, %struct.TYPE_40__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca %struct.TYPE_41__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_44__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_43__*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_40__* %3, %struct.TYPE_40__** %9, align 8
  %26 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  store %struct.TYPE_35__* %28, %struct.TYPE_35__** %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %30, %struct.TYPE_41__** %11, align 8
  %31 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %12, align 8
  %34 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  %37 = bitcast %struct.TYPE_44__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 16, i1 false)
  %38 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %20, align 8
  %41 = alloca float, i64 %39, align 16
  store i64 %39, i64* %21, align 8
  %42 = load i32, i32* @AMR_BLOCK_SIZE, align 4
  %43 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %46 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %47 = call i32 @ff_get_buffer(%struct.TYPE_42__* %45, %struct.TYPE_41__* %46, i32 0)
  store i32 %47, i32* %17, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %4
  %50 = load i32, i32* %17, align 4
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %381

51:                                               ; preds = %4
  %52 = load %struct.TYPE_41__*, %struct.TYPE_41__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to float*
  store float* %57, float** %14, align 8
  %58 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @unpack_bitstream(%struct.TYPE_35__* %58, i32* %59, i32 %60)
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NO_DATA, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = call i32 @av_log(%struct.TYPE_42__* %70, i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %381

74:                                               ; preds = %51
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MODE_DTX, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %82 = call i32 @avpriv_report_missing_feature(%struct.TYPE_42__* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %84 = load i32, i32* @AV_LOG_INFO, align 4
  %85 = call i32 @av_log(%struct.TYPE_42__* %83, i32 %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %86, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %381

87:                                               ; preds = %74
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MODE_12k2, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %95 = call i32 @lsf2lsp_5(%struct.TYPE_35__* %94)
  br label %99

96:                                               ; preds = %87
  %97 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %98 = call i32 @lsf2lsp_3(%struct.TYPE_35__* %97)
  br label %99

99:                                               ; preds = %96, %93
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %119, %99
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 15
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 8
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ff_acelp_lspd2lpc(i32 %110, i32 %117, i32 5)
  br label %119

119:                                              ; preds = %103
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %100

122:                                              ; preds = %100
  store i32 0, i32* %16, align 4
  br label %123

123:                                              ; preds = %336, %122
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %339

126:                                              ; preds = %123
  %127 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %127, i32 0, i32 14
  %129 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_43__*, %struct.TYPE_43__** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %130, i64 %132
  store %struct.TYPE_43__* %133, %struct.TYPE_43__** %25, align 8
  %134 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %135 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @decode_pitch_vector(%struct.TYPE_35__* %134, %struct.TYPE_43__* %135, i32 %136)
  %138 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %139 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @decode_fixed_sparse(%struct.TYPE_44__* %19, i32 %140, i64 %143, i32 %144)
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %147 = load %struct.TYPE_43__*, %struct.TYPE_43__** %25, align 8
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @decode_gains(%struct.TYPE_35__* %146, %struct.TYPE_43__* %147, i64 %150, i32 %151, float* %18)
  %153 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %154 = load i32, i32* %16, align 4
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @pitch_sharpening(%struct.TYPE_35__* %153, i32 %154, i64 %157, %struct.TYPE_44__* %19)
  %159 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %19, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %126
  %163 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %164 = load i32, i32* @AV_LOG_ERROR, align 4
  %165 = call i32 @av_log(%struct.TYPE_42__* %163, i32 %164, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %166, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %381

167:                                              ; preds = %126
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %168, i32 0, i32 7
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %172 = call i32 @ff_set_fixed_vector(i32* %170, %struct.TYPE_44__* %19, double 1.000000e+00, i32 %171)
  %173 = load float, float* %18, align 4
  %174 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %174, i32 0, i32 13
  %176 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i32 0, i32 0
  %177 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %176, align 8
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %178, i32 0, i32 7
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %181, i32 0, i32 7
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %185 = call i32 %177(i32* %180, i32* %183, i32 %184)
  %186 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %187 = sdiv i32 %185, %186
  %188 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 8
  %191 = load i32*, i32** @energy_mean, align 8
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @energy_pred_fac, align 4
  %198 = call double @ff_amr_set_fixed_gain(float %173, i32 %187, i32 %190, i32 %196, i32 %197)
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i32 0, i32 1
  %201 = load double*, double** %200, align 8
  %202 = getelementptr inbounds double, double* %201, i64 4
  store double %198, double* %202, align 8
  store i32 0, i32* %15, align 4
  br label %203

203:                                              ; preds = %221, %167
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %224

207:                                              ; preds = %203
  %208 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %208, i32 0, i32 11
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 4
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %213, i32 0, i32 10
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %15, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %219, %212
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %207
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %15, align 4
  br label %203

224:                                              ; preds = %203
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %225, i32 0, i32 10
  %227 = load i32*, i32** %226, align 8
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %228, i32 0, i32 1
  %230 = load double*, double** %229, align 8
  %231 = getelementptr inbounds double, double* %230, i64 4
  %232 = load double, double* %231, align 8
  %233 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %234 = call i32 @ff_set_fixed_vector(i32* %227, %struct.TYPE_44__* %19, double %232, i32 %233)
  store i32 0, i32* %15, align 4
  br label %235

235:                                              ; preds = %254, %224
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %257

239:                                              ; preds = %235
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 10
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @truncf(i32 %246)
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %248, i32 0, i32 10
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %15, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 %247, i32* %253, align 4
  br label %254

254:                                              ; preds = %239
  %255 = load i32, i32* %15, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %15, align 4
  br label %235

257:                                              ; preds = %235
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %259 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %16, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = call float @fixed_gain_smooth(%struct.TYPE_35__* %258, i32 %265, i32 %268, i64 %271)
  store float %272, float* %22, align 4
  %273 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %274 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %274, i32 0, i32 7
  %276 = load i32*, i32** %275, align 8
  %277 = load float, float* %22, align 4
  %278 = call float* @anti_sparseness(%struct.TYPE_35__* %273, %struct.TYPE_44__* %19, i32* %276, float %277, float* %41)
  store float* %278, float** %23, align 8
  %279 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %280 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %280, i32 0, i32 8
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load float, float* %22, align 4
  %288 = load float*, float** %23, align 8
  %289 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %289, i32 0, i32 9
  %291 = load i32*, i32** %290, align 8
  %292 = load i64, i64* @LP_FILTER_ORDER, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  %294 = call i64 @synthesis(%struct.TYPE_35__* %279, i32 %286, float %287, float* %288, i32* %293, i32 0)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %313

296:                                              ; preds = %257
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %298 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %298, i32 0, i32 8
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %16, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load float, float* %22, align 4
  %306 = load float*, float** %23, align 8
  %307 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %307, i32 0, i32 9
  %309 = load i32*, i32** %308, align 8
  %310 = load i64, i64* @LP_FILTER_ORDER, align 8
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  %312 = call i64 @synthesis(%struct.TYPE_35__* %297, i32 %304, float %305, float* %306, i32* %311, i32 1)
  br label %313

313:                                              ; preds = %296, %257
  %314 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %315 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %315, i32 0, i32 8
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %16, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load float*, float** %14, align 8
  %323 = load i32, i32* %16, align 4
  %324 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %325 = mul nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float, float* %322, i64 %326
  %328 = call i32 @postfilter(%struct.TYPE_35__* %314, i32 %321, float* %327)
  %329 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %329, i32 0, i32 7
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* @AMR_SUBFRAME_SIZE, align 4
  %333 = call i32 @ff_clear_fixed_vector(i32* %331, %struct.TYPE_44__* %19, i32 %332)
  %334 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %335 = call i32 @update_state(%struct.TYPE_35__* %334)
  br label %336

336:                                              ; preds = %313
  %337 = load i32, i32* %16, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %16, align 4
  br label %123

339:                                              ; preds = %123
  %340 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %340, i32 0, i32 6
  %342 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %341, i32 0, i32 0
  %343 = load i32 (float*, float*, i32, i32, i32, i32, i32)*, i32 (float*, float*, i32, i32, i32, i32, i32)** %342, align 8
  %344 = load float*, float** %14, align 8
  %345 = load float*, float** %14, align 8
  %346 = load i32, i32* @highpass_zeros, align 4
  %347 = load i32, i32* @highpass_poles, align 4
  %348 = load i32, i32* @highpass_gain, align 4
  %349 = load i32, i32* @AMR_SAMPLE_SCALE, align 4
  %350 = mul nsw i32 %348, %349
  %351 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @AMR_BLOCK_SIZE, align 4
  %355 = call i32 %343(float* %344, float* %345, i32 %346, i32 %347, i32 %350, i32 %353, i32 %354)
  %356 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %357 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %357, i32 0, i32 0
  %359 = load i32 (i32, i32, i32, double, double, i64)*, i32 (i32, i32, i32, double, double, i64)** %358, align 8
  %360 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %367 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %366, i32 0, i32 2
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 3
  %370 = load i32, i32* %369, align 4
  %371 = load i64, i64* @LP_FILTER_ORDER, align 8
  %372 = call i32 %359(i32 %362, i32 %365, i32 %370, double 8.400000e-01, double 1.600000e-01, i64 %371)
  %373 = load i32*, i32** %8, align 8
  store i32 1, i32* %373, align 4
  %374 = load i32*, i32** @frame_sizes_nb, align 8
  %375 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %381

381:                                              ; preds = %339, %162, %80, %69, %49
  %382 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %382)
  %383 = load i32, i32* %5, align 4
  ret i32 %383
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ff_get_buffer(%struct.TYPE_42__*, %struct.TYPE_41__*, i32) #3

declare dso_local i64 @unpack_bitstream(%struct.TYPE_35__*, i32*, i32) #3

declare dso_local i32 @av_log(%struct.TYPE_42__*, i32, i8*) #3

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_42__*, i8*) #3

declare dso_local i32 @lsf2lsp_5(%struct.TYPE_35__*) #3

declare dso_local i32 @lsf2lsp_3(%struct.TYPE_35__*) #3

declare dso_local i32 @ff_acelp_lspd2lpc(i32, i32, i32) #3

declare dso_local i32 @decode_pitch_vector(%struct.TYPE_35__*, %struct.TYPE_43__*, i32) #3

declare dso_local i32 @decode_fixed_sparse(%struct.TYPE_44__*, i32, i64, i32) #3

declare dso_local i32 @decode_gains(%struct.TYPE_35__*, %struct.TYPE_43__*, i64, i32, float*) #3

declare dso_local i32 @pitch_sharpening(%struct.TYPE_35__*, i32, i64, %struct.TYPE_44__*) #3

declare dso_local i32 @ff_set_fixed_vector(i32*, %struct.TYPE_44__*, double, i32) #3

declare dso_local double @ff_amr_set_fixed_gain(float, i32, i32, i32, i32) #3

declare dso_local i32 @truncf(i32) #3

declare dso_local float @fixed_gain_smooth(%struct.TYPE_35__*, i32, i32, i64) #3

declare dso_local float* @anti_sparseness(%struct.TYPE_35__*, %struct.TYPE_44__*, i32*, float, float*) #3

declare dso_local i64 @synthesis(%struct.TYPE_35__*, i32, float, float*, i32*, i32) #3

declare dso_local i32 @postfilter(%struct.TYPE_35__*, i32, float*) #3

declare dso_local i32 @ff_clear_fixed_vector(i32*, %struct.TYPE_44__*, i32) #3

declare dso_local i32 @update_state(%struct.TYPE_35__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
