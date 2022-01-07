; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_mpeg4_decode_studio_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_mpeg4_decode_studio_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32*, i32*, i32, i32, i32, %struct.TYPE_16__*, i64, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32* }

@STUDIO_INTRA_BITS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"illegal dct_dc_size vlc\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"dct_dc_size > 8\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"illegal ac coefficient group vlc\0A\00", align 1
@ac_state_tab = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, i32)* @mpeg4_decode_studio_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg4_decode_studio_block(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %8, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i64 0
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %20, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %21, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 6
  %46 = shl i32 1, %45
  %47 = mul nsw i32 -1, %46
  store i32 %47, i32* %24, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 6
  %54 = shl i32 1, %53
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %25, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 3, %58
  store i32 %59, i32* %26, align 4
  store i32 1, i32* %19, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @memset(i32* %60, i32 0, i32 256)
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %76

64:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @STUDIO_INTRA_BITS, align 4
  %72 = call i32 @get_vlc2(i32* %66, i32 %70, i32 %71, i32 2)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %22, align 8
  br label %106

76:                                               ; preds = %3
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 1
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @STUDIO_INTRA_BITS, align 4
  %92 = call i32 @get_vlc2(i32* %86, i32 %90, i32 %91, i32 2)
  store i32 %92, i32* %10, align 4
  br label %102

93:                                               ; preds = %76
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @STUDIO_INTRA_BITS, align 4
  %101 = call i32 @get_vlc2(i32* %95, i32 %99, i32 %100, i32 2)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %93, %84
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %22, align 8
  br label %106

106:                                              ; preds = %102, %64
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 7
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = load i32, i32* @AV_LOG_ERROR, align 4
  %114 = call i32 @av_log(%struct.TYPE_16__* %112, i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %115, i32* %4, align 4
  br label %440

116:                                              ; preds = %106
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %139

120:                                              ; preds = %116
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 6
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @get_xbits(i32* %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp sgt i32 %125, 8
  br i1 %126, label %127, label %138

127:                                              ; preds = %120
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 7
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 6
  %133 = call i32 @check_marker(%struct.TYPE_16__* %130, i32* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %127
  %136 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %136, i32* %4, align 4
  br label %440

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %120
  br label %139

139:                                              ; preds = %138, %119
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, %141
  store i32 %149, i32* %147, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 8
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %140
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 8, %164
  %166 = mul nsw i32 %161, %165
  %167 = load i32*, i32** %6, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %166, i32* %168, align 4
  br label %189

169:                                              ; preds = %140
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = ashr i32 8, %179
  %181 = mul nsw i32 %176, %180
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = ashr i32 8, %184
  %186 = mul nsw i32 %181, %185
  %187 = load i32*, i32** %6, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %169, %154
  %190 = load i32*, i32** %6, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %24, align 4
  %194 = load i32, i32* %25, align 4
  %195 = call i32 @av_clip(i32 %192, i32 %193, i32 %194)
  %196 = load i32*, i32** %6, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32 %195, i32* %197, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %19, align 4
  %202 = xor i32 %201, %200
  store i32 %202, i32* %19, align 4
  br label %203

203:                                              ; preds = %189, %261, %390
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 6
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @STUDIO_INTRA_BITS, align 4
  %210 = call i32 @get_vlc2(i32* %205, i32 %208, i32 %209, i32 2)
  store i32 %210, i32* %15, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %203
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 7
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %215, align 8
  %217 = load i32, i32* @AV_LOG_ERROR, align 4
  %218 = call i32 @av_log(%struct.TYPE_16__* %216, i32 %217, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %219 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %219, i32* %4, align 4
  br label %440

220:                                              ; preds = %203
  %221 = load i64**, i64*** @ac_state_tab, align 8
  %222 = load i32, i32* %15, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64*, i64** %221, i64 %223
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  %227 = load i64, i64* %226, align 8
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %17, align 4
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = load i64**, i64*** @ac_state_tab, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64*, i64** %232, i64 %234
  %236 = load i64*, i64** %235, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 1
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i64 %238
  store %struct.TYPE_13__* %239, %struct.TYPE_13__** %20, align 8
  %240 = load i32, i32* %15, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %220
  br label %433

243:                                              ; preds = %220
  %244 = load i32, i32* %15, align 4
  %245 = icmp sge i32 %244, 1
  br i1 %245, label %246, label %265

246:                                              ; preds = %243
  %247 = load i32, i32* %15, align 4
  %248 = icmp sle i32 %247, 6
  br i1 %248, label %249, label %265

249:                                              ; preds = %246
  %250 = load i32, i32* %17, align 4
  %251 = shl i32 1, %250
  store i32 %251, i32* %16, align 4
  %252 = load i32, i32* %17, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 6
  %257 = load i32, i32* %17, align 4
  %258 = call i32 @get_bits(i32* %256, i32 %257)
  %259 = load i32, i32* %16, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %16, align 4
  br label %261

261:                                              ; preds = %254, %249
  %262 = load i32, i32* %16, align 4
  %263 = load i32, i32* %14, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %14, align 4
  br label %203

265:                                              ; preds = %246, %243
  %266 = load i32, i32* %15, align 4
  %267 = icmp sge i32 %266, 7
  br i1 %267, label %268, label %307

268:                                              ; preds = %265
  %269 = load i32, i32* %15, align 4
  %270 = icmp sle i32 %269, 12
  br i1 %270, label %271, label %307

271:                                              ; preds = %268
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 6
  %274 = load i32, i32* %17, align 4
  %275 = call i32 @get_bits(i32* %273, i32 %274)
  store i32 %275, i32* %12, align 4
  %276 = load i32, i32* %12, align 4
  %277 = and i32 %276, 1
  store i32 %277, i32* %18, align 4
  %278 = load i32, i32* %12, align 4
  %279 = ashr i32 %278, 1
  store i32 %279, i32* %12, align 4
  %280 = load i32, i32* %17, align 4
  %281 = sub nsw i32 %280, 1
  %282 = shl i32 1, %281
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %282, %283
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* %14, align 4
  %287 = add nsw i32 %286, %285
  store i32 %287, i32* %14, align 4
  %288 = load i32, i32* %14, align 4
  %289 = icmp sgt i32 %288, 63
  br i1 %289, label %290, label %292

290:                                              ; preds = %271
  %291 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %291, i32* %4, align 4
  br label %440

292:                                              ; preds = %271
  %293 = load i32*, i32** %21, align 8
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %14, align 4
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %13, align 4
  %299 = load i32, i32* %18, align 4
  %300 = icmp ne i32 %299, 0
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i32 1, i32 -1
  %303 = load i32*, i32** %6, align 8
  %304 = load i32, i32* %13, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 %302, i32* %306, align 4
  br label %388

307:                                              ; preds = %268, %265
  %308 = load i32, i32* %15, align 4
  %309 = icmp sge i32 %308, 13
  br i1 %309, label %310, label %333

310:                                              ; preds = %307
  %311 = load i32, i32* %15, align 4
  %312 = icmp sle i32 %311, 20
  br i1 %312, label %313, label %333

313:                                              ; preds = %310
  %314 = load i32, i32* %14, align 4
  %315 = icmp sgt i32 %314, 63
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %317, i32* %4, align 4
  br label %440

318:                                              ; preds = %313
  %319 = load i32*, i32** %21, align 8
  %320 = load i32, i32* %14, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %14, align 4
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %13, align 4
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 6
  %327 = load i32, i32* %17, align 4
  %328 = call i32 @get_xbits(i32* %326, i32 %327)
  %329 = load i32*, i32** %6, align 8
  %330 = load i32, i32* %13, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %328, i32* %332, align 4
  br label %387

333:                                              ; preds = %310, %307
  %334 = load i32, i32* %15, align 4
  %335 = icmp eq i32 %334, 21
  br i1 %335, label %336, label %386

336:                                              ; preds = %333
  %337 = load i32, i32* %14, align 4
  %338 = icmp sgt i32 %337, 63
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %340, i32* %4, align 4
  br label %440

341:                                              ; preds = %336
  %342 = load i32*, i32** %21, align 8
  %343 = load i32, i32* %14, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %14, align 4
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  %347 = load i32, i32* %346, align 4
  store i32 %347, i32* %13, align 4
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 7
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %352, %355
  %357 = add nsw i32 %356, 4
  store i32 %357, i32* %17, align 4
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 6
  %360 = load i32, i32* %17, align 4
  %361 = call i32 @get_bits(i32* %359, i32 %360)
  store i32 %361, i32* %23, align 4
  %362 = load i32, i32* %23, align 4
  %363 = load i32, i32* %17, align 4
  %364 = sub nsw i32 %363, 1
  %365 = ashr i32 %362, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %379

367:                                              ; preds = %341
  %368 = load i32, i32* %23, align 4
  %369 = load i32, i32* %17, align 4
  %370 = shl i32 1, %369
  %371 = sub nsw i32 %370, 1
  %372 = xor i32 %368, %371
  %373 = add nsw i32 %372, 1
  %374 = mul nsw i32 -1, %373
  %375 = load i32*, i32** %6, align 8
  %376 = load i32, i32* %13, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  store i32 %374, i32* %378, align 4
  br label %385

379:                                              ; preds = %341
  %380 = load i32, i32* %23, align 4
  %381 = load i32*, i32** %6, align 8
  %382 = load i32, i32* %13, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 %380, i32* %384, align 4
  br label %385

385:                                              ; preds = %379, %367
  br label %386

386:                                              ; preds = %385, %333
  br label %387

387:                                              ; preds = %386, %318
  br label %388

388:                                              ; preds = %387, %292
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  %391 = load i32*, i32** %6, align 8
  %392 = load i32, i32* %13, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = load i32*, i32** %22, align 8
  %397 = load i32, i32* %13, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = mul nsw i32 %395, %400
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 5
  %404 = load i32, i32* %403, align 4
  %405 = mul nsw i32 %401, %404
  %406 = load i32, i32* %26, align 4
  %407 = shl i32 1, %406
  %408 = mul nsw i32 %405, %407
  %409 = sdiv i32 %408, 16
  %410 = load i32*, i32** %6, align 8
  %411 = load i32, i32* %13, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  store i32 %409, i32* %413, align 4
  %414 = load i32*, i32** %6, align 8
  %415 = load i32, i32* %13, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %24, align 4
  %420 = load i32, i32* %25, align 4
  %421 = call i32 @av_clip(i32 %418, i32 %419, i32 %420)
  %422 = load i32*, i32** %6, align 8
  %423 = load i32, i32* %13, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  store i32 %421, i32* %425, align 4
  %426 = load i32*, i32** %6, align 8
  %427 = load i32, i32* %13, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* %19, align 4
  %432 = xor i32 %431, %430
  store i32 %432, i32* %19, align 4
  br label %203

433:                                              ; preds = %242
  %434 = load i32, i32* %19, align 4
  %435 = and i32 %434, 1
  %436 = load i32*, i32** %6, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 63
  %438 = load i32, i32* %437, align 4
  %439 = xor i32 %438, %435
  store i32 %439, i32* %437, align 4
  store i32 0, i32* %4, align 4
  br label %440

440:                                              ; preds = %433, %339, %316, %290, %213, %135, %109
  %441 = load i32, i32* %4, align 4
  ret i32 %441
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @get_xbits(i32*, i32) #1

declare dso_local i32 @check_marker(%struct.TYPE_16__*, i32*, i8*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
