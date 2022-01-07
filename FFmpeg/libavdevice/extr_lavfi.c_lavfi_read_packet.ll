; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_lavfi.c_lavfi_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_lavfi.c_lavfi_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32*, i32*, i32*, %struct.TYPE_26__, %struct.TYPE_27__* }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i64, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }

@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@AV_BUFFERSINK_FLAG_PEEK = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"EOF sink_idx:%d\0A\00", align 1
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_ROUND_NEAR_INF = common dso_local global i32 0, align 4
@AV_ROUND_PASS_MINMAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"sink_idx:%d time:%f\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"min_pts_sink_idx:%i\0A\00", align 1
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@AV_PKT_DATA_STRINGS_METADATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_26__*)* @lavfi_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lavfi_read_packet(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca %struct.TYPE_30__, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %6, align 8
  %24 = load double, double* @DBL_MAX, align 8
  store double %24, double* %7, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %10, align 8
  store i32 0, i32* %14, align 4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %2
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 4
  %37 = bitcast %struct.TYPE_26__* %34 to i8*
  %38 = bitcast %struct.TYPE_26__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 24, i1 false)
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 4
  %41 = call i32 @av_init_packet(%struct.TYPE_26__* %40)
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 4
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %3, align 4
  br label %317

51:                                               ; preds = %2
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %129, %51
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %132

58:                                               ; preds = %52
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @av_buffersink_get_time_base(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %129

76:                                               ; preds = %58
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %85 = load i32, i32* @AV_BUFFERSINK_FLAG_PEEK, align 4
  %86 = call i32 @av_buffersink_get_frame_flags(i32 %83, %struct.TYPE_27__* %84, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @AVERROR_EOF, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %76
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 (%struct.TYPE_28__*, i8*, i32, ...) @ff_dlog(%struct.TYPE_28__* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 1, i32* %99, align 4
  br label %129

100:                                              ; preds = %76
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %3, align 4
  br label %317

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %112 = load i32, i32* @AV_ROUND_NEAR_INF, align 4
  %113 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %114 = or i32 %112, %113
  %115 = call double @av_rescale_q_rnd(i32 %109, i32 %110, i32 %111, i32 %114)
  store double %115, double* %16, align 8
  %116 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load double, double* %16, align 8
  %119 = call i32 (%struct.TYPE_28__*, i8*, i32, ...) @ff_dlog(%struct.TYPE_28__* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %117, double %118)
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %121 = call i32 @av_frame_unref(%struct.TYPE_27__* %120)
  %122 = load double, double* %16, align 8
  %123 = load double, double* %7, align 8
  %124 = fcmp olt double %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %106
  %126 = load double, double* %16, align 8
  store double %126, double* %7, align 8
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %125, %106
  br label %129

129:                                              ; preds = %128, %90, %75
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %52

132:                                              ; preds = %52
  %133 = load double, double* %7, align 8
  %134 = load double, double* @DBL_MAX, align 8
  %135 = fcmp oeq double %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %137, i32* %3, align 4
  br label %317

138:                                              ; preds = %132
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 (%struct.TYPE_28__*, i8*, i32, ...) @ff_dlog(%struct.TYPE_28__* %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %140)
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %150 = call i32 @av_buffersink_get_frame_flags(i32 %148, %struct.TYPE_27__* %149, i32 0)
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %8, align 4
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 8
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %201

162:                                              ; preds = %138
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @av_image_get_buffer_size(i32 %165, i64 %168, i32 %171, i32 1)
  store i32 %172, i32* %14, align 4
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @av_new_packet(%struct.TYPE_26__* %173, i32 %174)
  store i32 %175, i32* %12, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %162
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %3, align 4
  br label %317

179:                                              ; preds = %162
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %14, align 4
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = bitcast i32* %186 to i32**
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 9
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 8
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @av_image_copy_to_buffer(i32* %182, i32 %183, i32** %187, i32 %190, i32 %193, i64 %196, i32 %199, i32 1)
  br label %237

201:                                              ; preds = %138
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %236

206:                                              ; preds = %201
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @av_get_bytes_per_sample(i32 %212)
  %214 = mul nsw i32 %209, %213
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = mul nsw i32 %214, %217
  store i32 %218, i32* %14, align 4
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @av_new_packet(%struct.TYPE_26__* %219, i32 %220)
  store i32 %221, i32* %12, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %206
  %224 = load i32, i32* %12, align 4
  store i32 %224, i32* %3, align 4
  br label %317

225:                                              ; preds = %206
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %229, i32 0, i32 5
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %14, align 4
  %235 = call i32 @memcpy(i32* %228, i32 %233, i32 %234)
  br label %236

236:                                              ; preds = %225, %201
  br label %237

237:                                              ; preds = %236, %179
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 4
  %240 = load i32*, i32** %239, align 8
  store i32* %240, i32** %11, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %285

243:                                              ; preds = %237
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %19, align 8
  %244 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %245 = call i32 @av_bprint_init(%struct.TYPE_30__* %20, i32 0, i32 %244)
  br label %246

246:                                              ; preds = %252, %243
  %247 = load i32*, i32** %11, align 8
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %249 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %250 = call %struct.TYPE_29__* @av_dict_get(i32* %247, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_29__* %248, i32 %249)
  store %struct.TYPE_29__* %250, %struct.TYPE_29__** %19, align 8
  %251 = icmp ne %struct.TYPE_29__* %250, null
  br i1 %251, label %252, label %263

252:                                              ; preds = %246
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @av_bprintf(%struct.TYPE_30__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %255)
  %257 = call i32 @av_bprint_chars(%struct.TYPE_30__* %20, i8 signext 0, i32 1)
  %258 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @av_bprintf(%struct.TYPE_30__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %260)
  %262 = call i32 @av_bprint_chars(%struct.TYPE_30__* %20, i8 signext 0, i32 1)
  br label %246

263:                                              ; preds = %246
  %264 = call i32 @av_bprint_is_complete(%struct.TYPE_30__* %20)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %263
  %267 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %268 = load i32, i32* @AV_PKT_DATA_STRINGS_METADATA, align 4
  %269 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32* @av_packet_new_side_data(%struct.TYPE_26__* %267, i32 %268, i32 %270)
  store i32* %271, i32** %18, align 8
  %272 = icmp ne i32* %271, null
  br i1 %272, label %277, label %273

273:                                              ; preds = %266, %263
  %274 = call i32 @av_bprint_finalize(%struct.TYPE_30__* %20, i32* null)
  %275 = load i32, i32* @ENOMEM, align 4
  %276 = call i32 @AVERROR(i32 %275)
  store i32 %276, i32* %3, align 4
  br label %317

277:                                              ; preds = %266
  %278 = load i32*, i32** %18, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @memcpy(i32* %278, i32 %280, i32 %282)
  %284 = call i32 @av_bprint_finalize(%struct.TYPE_30__* %20, i32* null)
  br label %285

285:                                              ; preds = %277, %237
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %288 = load i32, i32* %9, align 4
  %289 = call i32 @create_subcc_packet(%struct.TYPE_28__* %286, %struct.TYPE_27__* %287, i32 %288)
  store i32 %289, i32* %12, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %285
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %293 = call i32 @av_frame_unref(%struct.TYPE_27__* %292)
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %295 = call i32 @av_packet_unref(%struct.TYPE_26__* %294)
  %296 = load i32, i32* %12, align 4
  store i32 %296, i32* %3, align 4
  br label %317

297:                                              ; preds = %285
  %298 = load i32, i32* %8, align 4
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 8
  %311 = load i32, i32* %14, align 4
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %315 = call i32 @av_frame_unref(%struct.TYPE_27__* %314)
  %316 = load i32, i32* %14, align 4
  store i32 %316, i32* %3, align 4
  br label %317

317:                                              ; preds = %297, %291, %273, %223, %177, %136, %103, %33
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_26__*) #2

declare dso_local i32 @av_buffersink_get_time_base(i32) #2

declare dso_local i32 @av_buffersink_get_frame_flags(i32, %struct.TYPE_27__*, i32) #2

declare dso_local i32 @ff_dlog(%struct.TYPE_28__*, i8*, i32, ...) #2

declare dso_local double @av_rescale_q_rnd(i32, i32, i32, i32) #2

declare dso_local i32 @av_frame_unref(%struct.TYPE_27__*) #2

declare dso_local i32 @av_image_get_buffer_size(i32, i64, i32, i32) #2

declare dso_local i32 @av_new_packet(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @av_image_copy_to_buffer(i32*, i32, i32**, i32, i32, i64, i32, i32) #2

declare dso_local i32 @av_get_bytes_per_sample(i32) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @av_bprint_init(%struct.TYPE_30__*, i32, i32) #2

declare dso_local %struct.TYPE_29__* @av_dict_get(i32*, i8*, %struct.TYPE_29__*, i32) #2

declare dso_local i32 @av_bprintf(%struct.TYPE_30__*, i8*, i32) #2

declare dso_local i32 @av_bprint_chars(%struct.TYPE_30__*, i8 signext, i32) #2

declare dso_local i32 @av_bprint_is_complete(%struct.TYPE_30__*) #2

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_26__*, i32, i32) #2

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_30__*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @create_subcc_packet(%struct.TYPE_28__*, %struct.TYPE_27__*, i32) #2

declare dso_local i32 @av_packet_unref(%struct.TYPE_26__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
