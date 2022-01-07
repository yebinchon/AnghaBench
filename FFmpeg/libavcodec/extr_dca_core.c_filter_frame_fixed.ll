; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_filter_frame_fixed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_filter_frame_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64, i32**, i32, i32*, i32, i32, i32, i32*, i64*, i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_14__*, i64, i64, i64, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32)* }
%struct.TYPE_14__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64* }

@DCA_PACKET_XLL = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S32P = common dso_local global i32 0, align 4
@DCA_CSS_XCH = common dso_local global i32 0, align 4
@DCA_AMODE_2F2R = common dso_local global i64 0, align 8
@DCA_SPEAKER_Ls = common dso_local global i64 0, align 8
@DCA_SPEAKER_Rs = common dso_local global i64 0, align 8
@DCA_SPEAKER_Cs = common dso_local global i64 0, align 8
@DCA_CSS_XXCH = common dso_local global i32 0, align 4
@DCA_EXSS_XXCH = common dso_local global i32 0, align 4
@ff_dca_channels = common dso_local global i32* null, align 8
@DCA_XXCH_CHANNELS_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DCA_AMODE_MONO = common dso_local global i64 0, align 8
@DCA_AMODE_STEREO_SUMDIFF = common dso_local global i64 0, align 8
@DCA_SPEAKER_L = common dso_local global i64 0, align 8
@DCA_SPEAKER_R = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_17__*)* @filter_frame_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame_fixed(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 21
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %6, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DCA_PACKET_XLL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = call i32 @ff_dca_core_filter_fixed(%struct.TYPE_15__* %34, i32 0)
  store i32 %35, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  br label %409

39:                                               ; preds = %33, %2
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 20
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @AV_SAMPLE_FMT_S32P, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  store i32 24, i32* %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %13, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = call i32 @ff_get_buffer(%struct.TYPE_18__* %55, %struct.TYPE_17__* %56, i32 0)
  store i32 %57, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %39
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %3, align 4
  br label %409

61:                                               ; preds = %39
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 19
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %105

66:                                               ; preds = %61
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DCA_CSS_XCH, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %66
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DCA_AMODE_2F2R, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %73
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 13
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 3
  %87 = load i32**, i32*** %86, align 8
  %88 = load i64, i64* @DCA_SPEAKER_Ls, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  %93 = load i32**, i32*** %92, align 8
  %94 = load i64, i64* @DCA_SPEAKER_Rs, align 8
  %95 = getelementptr inbounds i32*, i32** %93, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load i32**, i32*** %98, align 8
  %100 = load i64, i64* @DCA_SPEAKER_Cs, align 8
  %101 = getelementptr inbounds i32*, i32** %99, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = call i32 %84(i32* %90, i32* %96, i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %79, %73, %66, %61
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DCA_CSS_XXCH, align 4
  %110 = load i32, i32* @DCA_EXSS_XXCH, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %254

114:                                              ; preds = %105
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 18
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %254

119:                                              ; preds = %114
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %14, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  store i32* %125, i32** %15, align 8
  %126 = load i32*, i32** @ff_dca_channels, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %16, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32, i32* @DCA_XXCH_CHANNELS_MAX, align 4
  %138 = icmp sle i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @av_assert1(i32 %139)
  store i32 0, i32* %12, align 4
  br label %141

141:                                              ; preds = %172, %119
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %175

147:                                              ; preds = %141
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = shl i32 1, %151
  %153 = and i32 %150, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %147
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 13
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %159, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 3
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 %160(i32* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %155, %147
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %141

175:                                              ; preds = %141
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %250, %175
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %253

183:                                              ; preds = %177
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @map_prm_ch_to_spkr(%struct.TYPE_15__* %184, i32 %185)
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %183
  %190 = load i32, i32* @EINVAL, align 4
  %191 = call i32 @AVERROR(i32 %190)
  store i32 %191, i32* %3, align 4
  br label %409

192:                                              ; preds = %183
  store i32 0, i32* %12, align 4
  br label %193

193:                                              ; preds = %246, %192
  %194 = load i32, i32* %12, align 4
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %249

199:                                              ; preds = %193
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 9
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %16, align 4
  %205 = sub nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %12, align 4
  %210 = shl i32 1, %209
  %211 = and i32 %208, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %245

213:                                              ; preds = %199
  %214 = load i32*, i32** %15, align 8
  %215 = getelementptr inbounds i32, i32* %214, i32 1
  store i32* %215, i32** %15, align 8
  %216 = load i32, i32* %214, align 4
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @mul16(i32 %216, i32 %217)
  store i32 %218, i32* %18, align 4
  %219 = load i32, i32* %18, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %244

221:                                              ; preds = %213
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 13
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %225, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 3
  %229 = load i32**, i32*** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %229, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 3
  %236 = load i32**, i32*** %235, align 8
  %237 = load i32, i32* %17, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32*, i32** %236, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %13, align 4
  %243 = call i32 %226(i32* %233, i32* %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %221, %213
  br label %245

245:                                              ; preds = %244, %199
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %12, align 4
  br label %193

249:                                              ; preds = %193
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  br label %177

253:                                              ; preds = %177
  br label %254

254:                                              ; preds = %253, %114, %105
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @DCA_CSS_XXCH, align 4
  %259 = load i32, i32* @DCA_CSS_XCH, align 4
  %260 = or i32 %258, %259
  %261 = load i32, i32* @DCA_EXSS_XXCH, align 4
  %262 = or i32 %260, %261
  %263 = and i32 %257, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %334, label %265

265:                                              ; preds = %254
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 17
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %265
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @DCA_AMODE_MONO, align 8
  %275 = icmp ugt i64 %273, %274
  br i1 %275, label %282, label %276

276:                                              ; preds = %270, %265
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @DCA_AMODE_STEREO_SUMDIFF, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %302

282:                                              ; preds = %276, %270
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 15
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 0
  %287 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %286, align 8
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 3
  %290 = load i32**, i32*** %289, align 8
  %291 = load i64, i64* @DCA_SPEAKER_L, align 8
  %292 = getelementptr inbounds i32*, i32** %290, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 3
  %296 = load i32**, i32*** %295, align 8
  %297 = load i64, i64* @DCA_SPEAKER_R, align 8
  %298 = getelementptr inbounds i32*, i32** %296, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %13, align 4
  %301 = call i32 %287(i32* %293, i32* %299, i32 %300)
  br label %302

302:                                              ; preds = %282, %276
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 16
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %333

307:                                              ; preds = %302
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @DCA_AMODE_2F2R, align 8
  %312 = icmp uge i64 %310, %311
  br i1 %312, label %313, label %333

313:                                              ; preds = %307
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 15
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 0
  %318 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %317, align 8
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 3
  %321 = load i32**, i32*** %320, align 8
  %322 = load i64, i64* @DCA_SPEAKER_Ls, align 8
  %323 = getelementptr inbounds i32*, i32** %321, i64 %322
  %324 = load i32*, i32** %323, align 8
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 3
  %327 = load i32**, i32*** %326, align 8
  %328 = load i64, i64* @DCA_SPEAKER_Rs, align 8
  %329 = getelementptr inbounds i32*, i32** %327, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %13, align 4
  %332 = call i32 %318(i32* %324, i32* %330, i32 %331)
  br label %333

333:                                              ; preds = %313, %307, %302
  br label %334

334:                                              ; preds = %333, %254
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 14
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 11
  %340 = load i32, i32* %339, align 8
  %341 = icmp ne i32 %337, %340
  br i1 %341, label %342, label %357

342:                                              ; preds = %334
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %343, i32 0, i32 13
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %344, align 8
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 3
  %348 = load i32**, i32*** %347, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 12
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %13, align 4
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 11
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @ff_dca_downmix_to_stereo_fixed(%struct.TYPE_13__* %345, i32** %348, i32 %351, i32 %352, i32 %355)
  br label %357

357:                                              ; preds = %342, %334
  store i32 0, i32* %8, align 4
  br label %358

358:                                              ; preds = %405, %357
  %359 = load i32, i32* %8, align 4
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = icmp slt i32 %359, %362
  br i1 %363, label %364, label %408

364:                                              ; preds = %358
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %365, i32 0, i32 3
  %367 = load i32**, i32*** %366, align 8
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 10
  %370 = load i64*, i64** %369, align 8
  %371 = load i32, i32* %8, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i64, i64* %370, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds i32*, i32** %367, i64 %374
  %376 = load i32*, i32** %375, align 8
  store i32* %376, i32** %19, align 8
  %377 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %377, i32 0, i32 1
  %379 = load i64*, i64** %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i64, i64* %379, i64 %381
  %383 = load i64, i64* %382, align 8
  %384 = inttoptr i64 %383 to i32*
  store i32* %384, i32** %20, align 8
  store i32 0, i32* %9, align 4
  br label %385

385:                                              ; preds = %401, %364
  %386 = load i32, i32* %9, align 4
  %387 = load i32, i32* %13, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %404

389:                                              ; preds = %385
  %390 = load i32*, i32** %19, align 8
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @clip23(i32 %394)
  %396 = mul nsw i32 %395, 256
  %397 = load i32*, i32** %20, align 8
  %398 = load i32, i32* %9, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  store i32 %396, i32* %400, align 4
  br label %401

401:                                              ; preds = %389
  %402 = load i32, i32* %9, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %9, align 4
  br label %385

404:                                              ; preds = %385
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %8, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %8, align 4
  br label %358

408:                                              ; preds = %358
  store i32 0, i32* %3, align 4
  br label %409

409:                                              ; preds = %408, %189, %59, %37
  %410 = load i32, i32* %3, align 4
  ret i32 %410
}

declare dso_local i32 @ff_dca_core_filter_fixed(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @map_prm_ch_to_spkr(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @mul16(i32, i32) #1

declare dso_local i32 @ff_dca_downmix_to_stereo_fixed(%struct.TYPE_13__*, i32**, i32, i32, i32) #1

declare dso_local i32 @clip23(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
