; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_envelope.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_read_sbr_envelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32, i64*, i32**, i64*, i64 }

@vlc_sbr = common dso_local global %struct.TYPE_11__* null, align 8
@T_HUFFMAN_ENV_BAL_3_0DB = common dso_local global i64 0, align 8
@vlc_sbr_lav = common dso_local global i32* null, align 8
@F_HUFFMAN_ENV_BAL_3_0DB = common dso_local global i64 0, align 8
@T_HUFFMAN_ENV_BAL_1_5DB = common dso_local global i64 0, align 8
@F_HUFFMAN_ENV_BAL_1_5DB = common dso_local global i64 0, align 8
@T_HUFFMAN_ENV_3_0DB = common dso_local global i64 0, align 8
@F_HUFFMAN_ENV_3_0DB = common dso_local global i64 0, align 8
@T_HUFFMAN_ENV_1_5DB = common dso_local global i64 0, align 8
@F_HUFFMAN_ENV_1_5DB = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"env_facs_q %d is invalid\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, i32*, %struct.TYPE_9__*, i32)* @read_sbr_envelope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sbr_envelope(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, i32* %2, %struct.TYPE_9__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32]*, align 8
  %17 = alloca [2 x i32]*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br label %29

29:                                               ; preds = %24, %5
  %30 = phi i1 [ false, %5 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %20, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 1
  store i32 %38, i32* %21, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %94

43:                                               ; preds = %29
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %94

46:                                               ; preds = %43
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  store i32 5, i32* %12, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %53 = load i64, i64* @T_HUFFMAN_ENV_BAL_3_0DB, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = bitcast i32** %56 to [2 x i32]*
  store [2 x i32]* %57, [2 x i32]** %16, align 8
  %58 = load i32*, i32** @vlc_sbr_lav, align 8
  %59 = load i64, i64* @T_HUFFMAN_ENV_BAL_3_0DB, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %18, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %63 = load i64, i64* @F_HUFFMAN_ENV_BAL_3_0DB, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = bitcast i32** %66 to [2 x i32]*
  store [2 x i32]* %67, [2 x i32]** %17, align 8
  %68 = load i32*, i32** @vlc_sbr_lav, align 8
  %69 = load i64, i64* @F_HUFFMAN_ENV_BAL_3_0DB, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %19, align 4
  br label %93

72:                                               ; preds = %46
  store i32 6, i32* %12, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %74 = load i64, i64* @T_HUFFMAN_ENV_BAL_1_5DB, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = bitcast i32** %77 to [2 x i32]*
  store [2 x i32]* %78, [2 x i32]** %16, align 8
  %79 = load i32*, i32** @vlc_sbr_lav, align 8
  %80 = load i64, i64* @T_HUFFMAN_ENV_BAL_1_5DB, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %18, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %84 = load i64, i64* @F_HUFFMAN_ENV_BAL_1_5DB, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = bitcast i32** %87 to [2 x i32]*
  store [2 x i32]* %88, [2 x i32]** %17, align 8
  %89 = load i32*, i32** @vlc_sbr_lav, align 8
  %90 = load i64, i64* @F_HUFFMAN_ENV_BAL_1_5DB, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %19, align 4
  br label %93

93:                                               ; preds = %72, %51
  br label %142

94:                                               ; preds = %43, %29
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %94
  store i32 6, i32* %12, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %101 = load i64, i64* @T_HUFFMAN_ENV_3_0DB, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32**, i32*** %103, align 8
  %105 = bitcast i32** %104 to [2 x i32]*
  store [2 x i32]* %105, [2 x i32]** %16, align 8
  %106 = load i32*, i32** @vlc_sbr_lav, align 8
  %107 = load i64, i64* @T_HUFFMAN_ENV_3_0DB, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %18, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %111 = load i64, i64* @F_HUFFMAN_ENV_3_0DB, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = bitcast i32** %114 to [2 x i32]*
  store [2 x i32]* %115, [2 x i32]** %17, align 8
  %116 = load i32*, i32** @vlc_sbr_lav, align 8
  %117 = load i64, i64* @F_HUFFMAN_ENV_3_0DB, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %19, align 4
  br label %141

120:                                              ; preds = %94
  store i32 7, i32* %12, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %122 = load i64, i64* @T_HUFFMAN_ENV_1_5DB, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32**, i32*** %124, align 8
  %126 = bitcast i32** %125 to [2 x i32]*
  store [2 x i32]* %126, [2 x i32]** %16, align 8
  %127 = load i32*, i32** @vlc_sbr_lav, align 8
  %128 = load i64, i64* @T_HUFFMAN_ENV_1_5DB, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %18, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @vlc_sbr, align 8
  %132 = load i64, i64* @F_HUFFMAN_ENV_1_5DB, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32**, i32*** %134, align 8
  %136 = bitcast i32** %135 to [2 x i32]*
  store [2 x i32]* %136, [2 x i32]** %17, align 8
  %137 = load i32*, i32** @vlc_sbr_lav, align 8
  %138 = load i64, i64* @F_HUFFMAN_ENV_1_5DB, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %19, align 4
  br label %141

141:                                              ; preds = %120, %99
  br label %142

142:                                              ; preds = %141, %93
  store i32 0, i32* %13, align 4
  br label %143

143:                                              ; preds = %562, %142
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %565

149:                                              ; preds = %143
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 3
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %459

158:                                              ; preds = %149
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %161, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %166, %173
  br i1 %174, label %175, label %261

175:                                              ; preds = %158
  store i32 0, i32* %14, align 4
  br label %176

176:                                              ; preds = %257, %175
  %177 = load i32, i32* %14, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %183, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i32, i32* %180, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %177, %190
  br i1 %191, label %192, label %260

192:                                              ; preds = %176
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %20, align 4
  %205 = load i32*, i32** %9, align 8
  %206 = load [2 x i32]*, [2 x i32]** %16, align 8
  %207 = bitcast [2 x i32]* %206 to i32**
  %208 = call i32 @get_vlc2(i32* %205, i32** %207, i32 9, i32 3)
  %209 = load i32, i32* %18, align 4
  %210 = sub nsw i32 %208, %209
  %211 = mul nsw i32 %204, %210
  %212 = add nsw i32 %203, %211
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 2
  %215 = load i32**, i32*** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %215, i64 %218
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %14, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %212, i32* %223, align 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 2
  %226 = load i32**, i32*** %225, align 8
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32*, i32** %226, i64 %229
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ugt i32 %235, 127
  br i1 %236, label %237, label %256

237:                                              ; preds = %192
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @AV_LOG_ERROR, align 4
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 2
  %244 = load i32**, i32*** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %244, i64 %247
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @av_log(i32 %240, i32 %241, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %253)
  %255 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %255, i32* %6, align 4
  br label %581

256:                                              ; preds = %192
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %14, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %14, align 4
  br label %176

260:                                              ; preds = %176
  br label %458

261:                                              ; preds = %158
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  %264 = load i64*, i64** %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %264, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %361

271:                                              ; preds = %261
  store i32 0, i32* %14, align 4
  br label %272

272:                                              ; preds = %357, %271
  %273 = load i32, i32* %14, align 4
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = load i64*, i64** %278, align 8
  %280 = load i32, i32* %13, align 4
  %281 = add nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i64, i64* %279, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = getelementptr inbounds i32, i32* %276, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp slt i32 %273, %286
  br i1 %287, label %288, label %360

288:                                              ; preds = %272
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* %21, align 4
  %291 = add nsw i32 %289, %290
  %292 = ashr i32 %291, 1
  store i32 %292, i32* %15, align 4
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 2
  %295 = load i32**, i32*** %294, align 8
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = load i32, i32* %15, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %20, align 4
  %305 = load i32*, i32** %9, align 8
  %306 = load [2 x i32]*, [2 x i32]** %16, align 8
  %307 = bitcast [2 x i32]* %306 to i32**
  %308 = call i32 @get_vlc2(i32* %305, i32** %307, i32 9, i32 3)
  %309 = load i32, i32* %18, align 4
  %310 = sub nsw i32 %308, %309
  %311 = mul nsw i32 %304, %310
  %312 = add nsw i32 %303, %311
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 2
  %315 = load i32**, i32*** %314, align 8
  %316 = load i32, i32* %13, align 4
  %317 = add nsw i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %315, i64 %318
  %320 = load i32*, i32** %319, align 8
  %321 = load i32, i32* %14, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  store i32 %312, i32* %323, align 4
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %324, i32 0, i32 2
  %326 = load i32**, i32*** %325, align 8
  %327 = load i32, i32* %13, align 4
  %328 = add nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32*, i32** %326, i64 %329
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %14, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = icmp ugt i32 %335, 127
  br i1 %336, label %337, label %356

337:                                              ; preds = %288
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @AV_LOG_ERROR, align 4
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 2
  %344 = load i32**, i32*** %343, align 8
  %345 = load i32, i32* %13, align 4
  %346 = add nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32*, i32** %344, i64 %347
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %14, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @av_log(i32 %340, i32 %341, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %353)
  %355 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %355, i32* %6, align 4
  br label %581

356:                                              ; preds = %288
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %14, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %14, align 4
  br label %272

360:                                              ; preds = %272
  br label %457

361:                                              ; preds = %261
  store i32 0, i32* %14, align 4
  br label %362

362:                                              ; preds = %453, %361
  %363 = load i32, i32* %14, align 4
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 1
  %369 = load i64*, i64** %368, align 8
  %370 = load i32, i32* %13, align 4
  %371 = add nsw i32 %370, 1
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i64, i64* %369, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds i32, i32* %366, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = icmp slt i32 %363, %376
  br i1 %377, label %378, label %456

378:                                              ; preds = %362
  %379 = load i32, i32* %14, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %386

381:                                              ; preds = %378
  %382 = load i32, i32* %14, align 4
  %383 = mul nsw i32 2, %382
  %384 = load i32, i32* %21, align 4
  %385 = sub nsw i32 %383, %384
  br label %387

386:                                              ; preds = %378
  br label %387

387:                                              ; preds = %386, %381
  %388 = phi i32 [ %385, %381 ], [ 0, %386 ]
  store i32 %388, i32* %15, align 4
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 2
  %391 = load i32**, i32*** %390, align 8
  %392 = load i32, i32* %13, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32*, i32** %391, i64 %393
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %15, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %20, align 4
  %401 = load i32*, i32** %9, align 8
  %402 = load [2 x i32]*, [2 x i32]** %16, align 8
  %403 = bitcast [2 x i32]* %402 to i32**
  %404 = call i32 @get_vlc2(i32* %401, i32** %403, i32 9, i32 3)
  %405 = load i32, i32* %18, align 4
  %406 = sub nsw i32 %404, %405
  %407 = mul nsw i32 %400, %406
  %408 = add nsw i32 %399, %407
  %409 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %410 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %409, i32 0, i32 2
  %411 = load i32**, i32*** %410, align 8
  %412 = load i32, i32* %13, align 4
  %413 = add nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32*, i32** %411, i64 %414
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %14, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  store i32 %408, i32* %419, align 4
  %420 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %421 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %420, i32 0, i32 2
  %422 = load i32**, i32*** %421, align 8
  %423 = load i32, i32* %13, align 4
  %424 = add nsw i32 %423, 1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32*, i32** %422, i64 %425
  %427 = load i32*, i32** %426, align 8
  %428 = load i32, i32* %14, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = icmp ugt i32 %431, 127
  br i1 %432, label %433, label %452

433:                                              ; preds = %387
  %434 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @AV_LOG_ERROR, align 4
  %438 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %438, i32 0, i32 2
  %440 = load i32**, i32*** %439, align 8
  %441 = load i32, i32* %13, align 4
  %442 = add nsw i32 %441, 1
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32*, i32** %440, i64 %443
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %14, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = call i32 @av_log(i32 %436, i32 %437, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %449)
  %451 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %451, i32* %6, align 4
  br label %581

452:                                              ; preds = %387
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %14, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %14, align 4
  br label %362

456:                                              ; preds = %362
  br label %457

457:                                              ; preds = %456, %360
  br label %458

458:                                              ; preds = %457, %260
  br label %561

459:                                              ; preds = %149
  %460 = load i32, i32* %20, align 4
  %461 = load i32*, i32** %9, align 8
  %462 = load i32, i32* %12, align 4
  %463 = call i32 @get_bits(i32* %461, i32 %462)
  %464 = mul nsw i32 %460, %463
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 2
  %467 = load i32**, i32*** %466, align 8
  %468 = load i32, i32* %13, align 4
  %469 = add nsw i32 %468, 1
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32*, i32** %467, i64 %470
  %472 = load i32*, i32** %471, align 8
  %473 = getelementptr inbounds i32, i32* %472, i64 0
  store i32 %464, i32* %473, align 4
  store i32 1, i32* %14, align 4
  br label %474

474:                                              ; preds = %557, %459
  %475 = load i32, i32* %14, align 4
  %476 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %477 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %476, i32 0, i32 1
  %478 = load i32*, i32** %477, align 8
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 1
  %481 = load i64*, i64** %480, align 8
  %482 = load i32, i32* %13, align 4
  %483 = add nsw i32 %482, 1
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i64, i64* %481, i64 %484
  %486 = load i64, i64* %485, align 8
  %487 = getelementptr inbounds i32, i32* %478, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = icmp slt i32 %475, %488
  br i1 %489, label %490, label %560

490:                                              ; preds = %474
  %491 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %491, i32 0, i32 2
  %493 = load i32**, i32*** %492, align 8
  %494 = load i32, i32* %13, align 4
  %495 = add nsw i32 %494, 1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i32*, i32** %493, i64 %496
  %498 = load i32*, i32** %497, align 8
  %499 = load i32, i32* %14, align 4
  %500 = sub nsw i32 %499, 1
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %498, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* %20, align 4
  %505 = load i32*, i32** %9, align 8
  %506 = load [2 x i32]*, [2 x i32]** %17, align 8
  %507 = bitcast [2 x i32]* %506 to i32**
  %508 = call i32 @get_vlc2(i32* %505, i32** %507, i32 9, i32 3)
  %509 = load i32, i32* %19, align 4
  %510 = sub nsw i32 %508, %509
  %511 = mul nsw i32 %504, %510
  %512 = add nsw i32 %503, %511
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 2
  %515 = load i32**, i32*** %514, align 8
  %516 = load i32, i32* %13, align 4
  %517 = add nsw i32 %516, 1
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32*, i32** %515, i64 %518
  %520 = load i32*, i32** %519, align 8
  %521 = load i32, i32* %14, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i32, i32* %520, i64 %522
  store i32 %512, i32* %523, align 4
  %524 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %525 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %524, i32 0, i32 2
  %526 = load i32**, i32*** %525, align 8
  %527 = load i32, i32* %13, align 4
  %528 = add nsw i32 %527, 1
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32*, i32** %526, i64 %529
  %531 = load i32*, i32** %530, align 8
  %532 = load i32, i32* %14, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = icmp ugt i32 %535, 127
  br i1 %536, label %537, label %556

537:                                              ; preds = %490
  %538 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %539 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* @AV_LOG_ERROR, align 4
  %542 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %543 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %542, i32 0, i32 2
  %544 = load i32**, i32*** %543, align 8
  %545 = load i32, i32* %13, align 4
  %546 = add nsw i32 %545, 1
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32*, i32** %544, i64 %547
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* %14, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @av_log(i32 %540, i32 %541, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %553)
  %555 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %555, i32* %6, align 4
  br label %581

556:                                              ; preds = %490
  br label %557

557:                                              ; preds = %556
  %558 = load i32, i32* %14, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %14, align 4
  br label %474

560:                                              ; preds = %474
  br label %561

561:                                              ; preds = %560, %458
  br label %562

562:                                              ; preds = %561
  %563 = load i32, i32* %13, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %13, align 4
  br label %143

565:                                              ; preds = %143
  %566 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %567 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %566, i32 0, i32 2
  %568 = load i32**, i32*** %567, align 8
  %569 = getelementptr inbounds i32*, i32** %568, i64 0
  %570 = load i32*, i32** %569, align 8
  %571 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %572 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %571, i32 0, i32 2
  %573 = load i32**, i32*** %572, align 8
  %574 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %575 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32*, i32** %573, i64 %577
  %579 = load i32*, i32** %578, align 8
  %580 = call i32 @memcpy(i32* %570, i32* %579, i32 8)
  store i32 0, i32* %6, align 4
  br label %581

581:                                              ; preds = %565, %537, %433, %337, %237
  %582 = load i32, i32* %6, align 4
  ret i32 %582
}

declare dso_local i32 @get_vlc2(i32*, i32**, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
