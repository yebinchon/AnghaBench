; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_qcelp_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_qcelp_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32, float*, float*, i64, i64, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32*, i64*, i32, i64 }
%struct.TYPE_23__ = type { i32*, i32 }
%struct.TYPE_24__ = type { i32, i64* }

@I_F_Q = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Bitrate cannot be determined.\00", align 1
@RATE_OCTAVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Bitrate is 1/8 and first 16 bits are on.\00", align 1
@SILENCE = common dso_local global i64 0, align 8
@qcelp_unpacking_bitmaps_per_rate = common dso_local global %struct.TYPE_22__** null, align 8
@qcelp_unpacking_bitmaps_lengths = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Wrong data in reserved frame area.\00", align 1
@RATE_QUARTER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Codebook gain sanity check failed.\00", align 1
@RATE_HALF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot initialize pitch filter.\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Badly received packets in frame.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i8*, i32*, %struct.TYPE_23__*)* @qcelp_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcelp_decode_frame(%struct.TYPE_25__* %0, i8* %1, i32* %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [10 x float], align 16
  %18 = alloca [10 x float], align 16
  %19 = alloca [16 x float], align 16
  %20 = alloca float*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_22__*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %12, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %34, %struct.TYPE_24__** %13, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  store i32 160, i32* %36, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %39 = call i32 @ff_get_buffer(%struct.TYPE_25__* %37, %struct.TYPE_24__* %38, i32 0)
  store i32 %39, i32* %16, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %5, align 4
  br label %307

43:                                               ; preds = %4
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to float*
  store float* %49, float** %14, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @determine_bitrate(%struct.TYPE_25__* %50, i32 %51, i32** %10)
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* @I_F_Q, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %59 = call i32 @warn_insufficient_frame_quality(%struct.TYPE_25__* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %231

60:                                               ; preds = %43
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RATE_OCTAVE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @AV_RB16(i32* %67)
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = icmp eq i32 %68, 65535
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %74 = call i32 @warn_insufficient_frame_quality(%struct.TYPE_25__* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %231

75:                                               ; preds = %66, %60
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SILENCE, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %206

81:                                               ; preds = %75
  %82 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @qcelp_unpacking_bitmaps_per_rate, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %82, i64 %85
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  store %struct.TYPE_22__* %87, %struct.TYPE_22__** %21, align 8
  %88 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @qcelp_unpacking_bitmaps_per_rate, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %88, i64 %91
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %92, align 8
  %94 = load i32*, i32** @qcelp_unpacking_bitmaps_lengths, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i64 %100
  store %struct.TYPE_22__* %101, %struct.TYPE_22__** %22, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 6
  %104 = bitcast %struct.TYPE_20__* %103 to i32*
  store i32* %104, i32** %23, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 7
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @init_get_bits8(i32* %106, i32* %107, i32 %108)
  store i32 %109, i32* %16, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %81
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %5, align 4
  br label %307

113:                                              ; preds = %81
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 6
  %116 = call i32 @memset(%struct.TYPE_20__* %115, i32 0, i32 4)
  br label %117

117:                                              ; preds = %139, %113
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %120 = icmp ult %struct.TYPE_22__* %118, %119
  br i1 %120, label %121, label %142

121:                                              ; preds = %117
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 7
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @get_bits(i32* %123, i32 %126)
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 %127, %130
  %132 = load i32*, i32** %23, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %131
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %121
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 1
  store %struct.TYPE_22__* %141, %struct.TYPE_22__** %21, align 8
  br label %117

142:                                              ; preds = %117
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %150 = call i32 @warn_insufficient_frame_quality(%struct.TYPE_25__* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %231

151:                                              ; preds = %142
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @RATE_QUARTER, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %151
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @codebook_sanity_check_for_rate_quarter(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %166 = call i32 @warn_insufficient_frame_quality(%struct.TYPE_25__* %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %231

167:                                              ; preds = %157, %151
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @RATE_HALF, align 8
  %172 = icmp uge i64 %170, %171
  br i1 %172, label %173, label %205

173:                                              ; preds = %167
  store i32 0, i32* %15, align 4
  br label %174

174:                                              ; preds = %201, %173
  %175 = load i32, i32* %15, align 4
  %176 = icmp slt i32 %175, 4
  br i1 %176, label %177, label %204

177:                                              ; preds = %174
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 6
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 1
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %177
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp sge i32 %195, 124
  br i1 %196, label %197, label %200

197:                                              ; preds = %187
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %199 = call i32 @warn_insufficient_frame_quality(%struct.TYPE_25__* %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %231

200:                                              ; preds = %187, %177
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %15, align 4
  br label %174

204:                                              ; preds = %174
  br label %205

205:                                              ; preds = %204, %167
  br label %206

206:                                              ; preds = %205, %75
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %208 = getelementptr inbounds [16 x float], [16 x float]* %19, i64 0, i64 0
  %209 = call i32 @decode_gain_and_index(%struct.TYPE_21__* %207, float* %208)
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %211 = getelementptr inbounds [16 x float], [16 x float]* %19, i64 0, i64 0
  %212 = load float*, float** %14, align 8
  %213 = call i32 @compute_svector(%struct.TYPE_21__* %210, float* %211, float* %212)
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %215 = getelementptr inbounds [10 x float], [10 x float]* %17, i64 0, i64 0
  %216 = call i64 @decode_lspf(%struct.TYPE_21__* %214, float* %215)
  %217 = icmp slt i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %206
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %220 = call i32 @warn_insufficient_frame_quality(%struct.TYPE_25__* %219, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %231

221:                                              ; preds = %206
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %223 = load float*, float** %14, align 8
  %224 = call i32 @apply_pitch_filters(%struct.TYPE_21__* %222, float* %223)
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @I_F_Q, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %252

230:                                              ; preds = %221
  br label %231

231:                                              ; preds = %230, %218, %197, %164, %148, %72, %57
  %232 = load i64, i64* @I_F_Q, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %236, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %240 = getelementptr inbounds [16 x float], [16 x float]* %19, i64 0, i64 0
  %241 = call i32 @decode_gain_and_index(%struct.TYPE_21__* %239, float* %240)
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %243 = getelementptr inbounds [16 x float], [16 x float]* %19, i64 0, i64 0
  %244 = load float*, float** %14, align 8
  %245 = call i32 @compute_svector(%struct.TYPE_21__* %242, float* %243, float* %244)
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %247 = getelementptr inbounds [10 x float], [10 x float]* %17, i64 0, i64 0
  %248 = call i64 @decode_lspf(%struct.TYPE_21__* %246, float* %247)
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %250 = load float*, float** %14, align 8
  %251 = call i32 @apply_pitch_filters(%struct.TYPE_21__* %249, float* %250)
  br label %255

252:                                              ; preds = %221
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 5
  store i64 0, i64* %254, align 8
  br label %255

255:                                              ; preds = %252, %231
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 2
  %258 = load float*, float** %257, align 8
  %259 = getelementptr inbounds float, float* %258, i64 10
  store float* %259, float** %20, align 8
  store i32 0, i32* %15, align 4
  br label %260

260:                                              ; preds = %279, %255
  %261 = load i32, i32* %15, align 4
  %262 = icmp slt i32 %261, 4
  br i1 %262, label %263, label %282

263:                                              ; preds = %260
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %265 = getelementptr inbounds [10 x float], [10 x float]* %17, i64 0, i64 0
  %266 = getelementptr inbounds [10 x float], [10 x float]* %18, i64 0, i64 0
  %267 = load i32, i32* %15, align 4
  %268 = call i32 @interpolate_lpc(%struct.TYPE_21__* %264, float* %265, float* %266, i32 %267)
  %269 = load float*, float** %20, align 8
  %270 = getelementptr inbounds [10 x float], [10 x float]* %18, i64 0, i64 0
  %271 = load float*, float** %14, align 8
  %272 = load i32, i32* %15, align 4
  %273 = mul nsw i32 %272, 40
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %271, i64 %274
  %276 = call i32 @ff_celp_lp_synthesis_filterf(float* %269, float* %270, float* %275, i32 40, i32 10)
  %277 = load float*, float** %20, align 8
  %278 = getelementptr inbounds float, float* %277, i64 40
  store float* %278, float** %20, align 8
  br label %279

279:                                              ; preds = %263
  %280 = load i32, i32* %15, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %15, align 4
  br label %260

282:                                              ; preds = %260
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %284 = load float*, float** %14, align 8
  %285 = getelementptr inbounds [10 x float], [10 x float]* %18, i64 0, i64 0
  %286 = call i32 @postfilter(%struct.TYPE_21__* %283, float* %284, float* %285)
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 2
  %289 = load float*, float** %288, align 8
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 2
  %292 = load float*, float** %291, align 8
  %293 = getelementptr inbounds float, float* %292, i64 160
  %294 = call i32 @memcpy(float* %289, float* %293, i32 40)
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 3
  %297 = load float*, float** %296, align 8
  %298 = getelementptr inbounds [10 x float], [10 x float]* %17, i64 0, i64 0
  %299 = call i32 @memcpy(float* %297, float* %298, i32 8)
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 4
  store i64 %302, i64* %304, align 8
  %305 = load i32*, i32** %8, align 8
  store i32 1, i32* %305, align 4
  %306 = load i32, i32* %11, align 4
  store i32 %306, i32* %5, align 4
  br label %307

307:                                              ; preds = %282, %111, %41
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @determine_bitrate(%struct.TYPE_25__*, i32, i32**) #1

declare dso_local i32 @warn_insufficient_frame_quality(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @codebook_sanity_check_for_rate_quarter(i32) #1

declare dso_local i32 @decode_gain_and_index(%struct.TYPE_21__*, float*) #1

declare dso_local i32 @compute_svector(%struct.TYPE_21__*, float*, float*) #1

declare dso_local i64 @decode_lspf(%struct.TYPE_21__*, float*) #1

declare dso_local i32 @apply_pitch_filters(%struct.TYPE_21__*, float*) #1

declare dso_local i32 @interpolate_lpc(%struct.TYPE_21__*, float*, float*, i32) #1

declare dso_local i32 @ff_celp_lp_synthesis_filterf(float*, float*, float*, i32, i32) #1

declare dso_local i32 @postfilter(%struct.TYPE_21__*, float*, float*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
