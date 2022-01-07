; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dpcm.c_dpcm_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dpcm.c_dpcm_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32*, i32*, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i64** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"packet is too small\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"channels have differing number of samples\0A\00", align 1
@interplay_delta_table = common dso_local global i32* null, align 8
@__const.dpcm_decode_frame.shift = private unnamed_addr constant [2 x i32] [i32 4, i32 4], align 4
@sol_table_16 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_13__*)* @dpcm_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpcm_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca [2 x i32], align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %11, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %4
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %45, %4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @bytestream2_init(i32* %20, i32 %55, i32 %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %93 [
    i32 131, label %63
    i32 132, label %66
    i32 128, label %73
    i32 129, label %80
    i32 133, label %91
    i32 130, label %91
  ]

63:                                               ; preds = %52
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 8
  store i32 %65, i32* %13, align 4
  br label %93

66:                                               ; preds = %52
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 6
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  store i32 %72, i32* %13, align 4
  br label %93

73:                                               ; preds = %52
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 2, %77
  %79 = sub nsw i32 %74, %78
  store i32 %79, i32* %13, align 4
  br label %93

80:                                               ; preds = %52
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 3
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %86, 2
  store i32 %87, i32* %13, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %88, %85
  br label %93

91:                                               ; preds = %52, %52
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %52, %91, %90, %73, %66, %63
  %94 = load i32, i32* %13, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = load i32, i32* @AV_LOG_ERROR, align 4
  %99 = call i32 @av_log(%struct.TYPE_15__* %97, i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %5, align 4
  br label %611

102:                                              ; preds = %93
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = srem i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = load i32, i32* @AV_LOG_WARNING, align 4
  %112 = call i32 @av_log(%struct.TYPE_15__* %110, i32 %111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %102
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %114, %117
  %119 = sub nsw i32 %118, 1
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %119, %122
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %128 = call i32 @ff_get_buffer(%struct.TYPE_15__* %126, %struct.TYPE_14__* %127, i32 0)
  store i32 %128, i32* %14, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %113
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %5, align 4
  br label %611

132:                                              ; preds = %113
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i64**, i64*** %134, align 8
  %136 = getelementptr inbounds i64*, i64** %135, i64 0
  %137 = load i64*, i64** %136, align 8
  %138 = bitcast i64* %137 to i32*
  store i32* %138, i32** %18, align 8
  %139 = load i32*, i32** %18, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32* %142, i32** %19, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %606 [
    i32 131, label %148
    i32 132, label %203
    i32 128, label %260
    i32 129, label %349
    i32 130, label %517
    i32 133, label %580
  ]

148:                                              ; preds = %132
  %149 = call i32 @bytestream2_skipu(i32* %20, i32 6)
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = call i64 @bytestream2_get_byteu(i32* %20)
  %154 = shl i64 %153, 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @sign_extend(i32 %155, i32 16)
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  store i32 %156, i32* %157, align 4
  %158 = call i64 @bytestream2_get_byteu(i32* %20)
  %159 = shl i64 %158, 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @sign_extend(i32 %160, i32 16)
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %161, i32* %162, align 4
  br label %167

163:                                              ; preds = %148
  %164 = call i32 @bytestream2_get_le16u(i32* %20)
  %165 = call i32 @sign_extend(i32 %164, i32 16)
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %152
  br label %168

168:                                              ; preds = %172, %167
  %169 = load i32*, i32** %18, align 8
  %170 = load i32*, i32** %19, align 8
  %171 = icmp ult i32* %169, %170
  br i1 %171, label %172, label %202

172:                                              ; preds = %168
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = call i64 @bytestream2_get_byteu(i32* %20)
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %16, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, %178
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @av_clip_int16(i32 %187)
  %189 = ptrtoint i8* %188 to i32
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %191
  store i32 %189, i32* %192, align 4
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %18, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %18, align 8
  store i32 %196, i32* %197, align 4
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %16, align 4
  %201 = xor i32 %200, %199
  store i32 %201, i32* %16, align 4
  br label %168

202:                                              ; preds = %168
  br label %606

203:                                              ; preds = %132
  %204 = call i32 @bytestream2_skipu(i32* %20, i32 6)
  store i32 0, i32* %16, align 4
  br label %205

205:                                              ; preds = %223, %203
  %206 = load i32, i32* %16, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %205
  %212 = call i32 @bytestream2_get_le16u(i32* %20)
  %213 = call i32 @sign_extend(i32 %212, i32 16)
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %215
  store i32 %213, i32* %216, align 4
  %217 = load i32, i32* %16, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %18, align 8
  %222 = getelementptr inbounds i32, i32* %221, i32 1
  store i32* %222, i32** %18, align 8
  store i32 %220, i32* %221, align 4
  br label %223

223:                                              ; preds = %211
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %16, align 4
  br label %205

226:                                              ; preds = %205
  store i32 0, i32* %16, align 4
  br label %227

227:                                              ; preds = %231, %226
  %228 = load i32*, i32** %18, align 8
  %229 = load i32*, i32** %19, align 8
  %230 = icmp ult i32* %228, %229
  br i1 %230, label %231, label %259

231:                                              ; preds = %227
  %232 = load i32*, i32** @interplay_delta_table, align 8
  %233 = call i64 @bytestream2_get_byteu(i32* %20)
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %16, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, %235
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @av_clip_int16(i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %248
  store i32 %246, i32* %249, align 4
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %18, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %18, align 8
  store i32 %253, i32* %254, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %16, align 4
  %258 = xor i32 %257, %256
  store i32 %258, i32* %16, align 4
  br label %227

259:                                              ; preds = %227
  br label %606

260:                                              ; preds = %132
  %261 = bitcast [2 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %261, i8* align 4 bitcast ([2 x i32]* @__const.dpcm_decode_frame.shift to i8*), i64 8, i1 false)
  store i32 0, i32* %16, align 4
  br label %262

262:                                              ; preds = %274, %260
  %263 = load i32, i32* %16, align 4
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %262
  %269 = call i32 @bytestream2_get_le16u(i32* %20)
  %270 = call i32 @sign_extend(i32 %269, i32 16)
  %271 = load i32, i32* %16, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %272
  store i32 %270, i32* %273, align 4
  br label %274

274:                                              ; preds = %268
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %16, align 4
  br label %262

277:                                              ; preds = %262
  store i32 0, i32* %16, align 4
  br label %278

278:                                              ; preds = %317, %277
  %279 = load i32*, i32** %18, align 8
  %280 = load i32*, i32** %19, align 8
  %281 = icmp ult i32* %279, %280
  br i1 %281, label %282, label %348

282:                                              ; preds = %278
  %283 = call i64 @bytestream2_get_byteu(i32* %20)
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %22, align 4
  %285 = load i32, i32* %22, align 4
  %286 = and i32 %285, 3
  store i32 %286, i32* %23, align 4
  %287 = load i32, i32* %23, align 4
  %288 = icmp eq i32 %287, 3
  br i1 %288, label %289, label %295

289:                                              ; preds = %282
  %290 = load i32, i32* %16, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %292, align 4
  br label %303

295:                                              ; preds = %282
  %296 = load i32, i32* %23, align 4
  %297 = mul nsw i32 2, %296
  %298 = load i32, i32* %16, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = sub nsw i32 %301, %297
  store i32 %302, i32* %300, align 4
  br label %303

303:                                              ; preds = %295, %289
  %304 = load i32, i32* %22, align 4
  %305 = and i32 %304, -4
  %306 = shl i32 %305, 8
  %307 = call i32 @sign_extend(i32 %306, i32 16)
  store i32 %307, i32* %22, align 4
  %308 = load i32, i32* %16, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %303
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %315
  store i32 0, i32* %316, align 4
  br label %317

317:                                              ; preds = %313, %303
  %318 = load i32, i32* %16, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %22, align 4
  %323 = ashr i32 %322, %321
  store i32 %323, i32* %22, align 4
  %324 = load i32, i32* %22, align 4
  %325 = load i32, i32* %16, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %328, %324
  store i32 %329, i32* %327, align 4
  %330 = load i32, i32* %16, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = call i8* @av_clip_int16(i32 %333)
  %335 = ptrtoint i8* %334 to i32
  %336 = load i32, i32* %16, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %337
  store i32 %335, i32* %338, align 4
  %339 = load i32, i32* %16, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** %18, align 8
  %344 = getelementptr inbounds i32, i32* %343, i32 1
  store i32* %344, i32** %18, align 8
  store i32 %342, i32* %343, align 4
  %345 = load i32, i32* %17, align 4
  %346 = load i32, i32* %16, align 4
  %347 = xor i32 %346, %345
  store i32 %347, i32* %16, align 4
  br label %278

348:                                              ; preds = %278
  br label %606

349:                                              ; preds = %132
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 3
  br i1 %353, label %354, label %446

354:                                              ; preds = %349
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %355, i32 0, i32 1
  %357 = load i64**, i64*** %356, align 8
  %358 = getelementptr inbounds i64*, i64** %357, i64 0
  %359 = load i64*, i64** %358, align 8
  store i64* %359, i64** %24, align 8
  %360 = load i64*, i64** %24, align 8
  %361 = load i32, i32* %13, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %360, i64 %362
  store i64* %363, i64** %25, align 8
  br label %364

364:                                              ; preds = %368, %354
  %365 = load i64*, i64** %24, align 8
  %366 = load i64*, i64** %25, align 8
  %367 = icmp ult i64* %365, %366
  br i1 %367, label %368, label %445

368:                                              ; preds = %364
  %369 = call i64 @bytestream2_get_byteu(i32* %20)
  %370 = trunc i64 %369 to i32
  store i32 %370, i32* %26, align 4
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %26, align 4
  %375 = ashr i32 %374, 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %373, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %380 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i32, i32* %382, align 4
  %384 = add nsw i32 %383, %378
  store i32 %384, i32* %382, align 4
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i32 0, i32 1
  %387 = load i32*, i32** %386, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 0
  %389 = load i32, i32* %388, align 4
  %390 = call i8* @av_clip_uint8(i32 %389)
  %391 = ptrtoint i8* %390 to i32
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 1
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 0
  store i32 %391, i32* %395, align 4
  %396 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 0
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = load i64*, i64** %24, align 8
  %403 = getelementptr inbounds i64, i64* %402, i32 1
  store i64* %403, i64** %24, align 8
  store i64 %401, i64* %402, align 8
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 2
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %26, align 4
  %408 = and i32 %407, 15
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %406, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %413 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i32 0, i32 1
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %17, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %418, %411
  store i32 %419, i32* %417, align 4
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 1
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %17, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = call i8* @av_clip_uint8(i32 %426)
  %428 = ptrtoint i8* %427 to i32
  %429 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 1
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %17, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  store i32 %428, i32* %434, align 4
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %17, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %437, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %441 to i64
  %443 = load i64*, i64** %24, align 8
  %444 = getelementptr inbounds i64, i64* %443, i32 1
  store i64* %444, i64** %24, align 8
  store i64 %442, i64* %443, align 8
  br label %364

445:                                              ; preds = %364
  br label %516

446:                                              ; preds = %349
  br label %447

447:                                              ; preds = %487, %446
  %448 = load i32*, i32** %18, align 8
  %449 = load i32*, i32** %19, align 8
  %450 = icmp ult i32* %448, %449
  br i1 %450, label %451, label %515

451:                                              ; preds = %447
  %452 = call i64 @bytestream2_get_byteu(i32* %20)
  %453 = trunc i64 %452 to i32
  store i32 %453, i32* %27, align 4
  %454 = load i32, i32* %27, align 4
  %455 = and i32 %454, 128
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %472

457:                                              ; preds = %451
  %458 = load i32*, i32** @sol_table_16, align 8
  %459 = load i32, i32* %27, align 4
  %460 = and i32 %459, 127
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %458, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 1
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %16, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = sub nsw i32 %470, %463
  store i32 %471, i32* %469, align 4
  br label %487

472:                                              ; preds = %451
  %473 = load i32*, i32** @sol_table_16, align 8
  %474 = load i32, i32* %27, align 4
  %475 = and i32 %474, 127
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %473, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 1
  %481 = load i32*, i32** %480, align 8
  %482 = load i32, i32* %16, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %481, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = add nsw i32 %485, %478
  store i32 %486, i32* %484, align 4
  br label %487

487:                                              ; preds = %472, %457
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 1
  %490 = load i32*, i32** %489, align 8
  %491 = load i32, i32* %16, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = call i8* @av_clip_int16(i32 %494)
  %496 = ptrtoint i8* %495 to i32
  %497 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %498 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %497, i32 0, i32 1
  %499 = load i32*, i32** %498, align 8
  %500 = load i32, i32* %16, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %499, i64 %501
  store i32 %496, i32* %502, align 4
  %503 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %504 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %503, i32 0, i32 1
  %505 = load i32*, i32** %504, align 8
  %506 = load i32, i32* %16, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = load i32*, i32** %18, align 8
  %511 = getelementptr inbounds i32, i32* %510, i32 1
  store i32* %511, i32** %18, align 8
  store i32 %509, i32* %510, align 4
  %512 = load i32, i32* %17, align 4
  %513 = load i32, i32* %16, align 4
  %514 = xor i32 %513, %512
  store i32 %514, i32* %16, align 4
  br label %447

515:                                              ; preds = %447
  br label %516

516:                                              ; preds = %515, %445
  br label %606

517:                                              ; preds = %132
  br label %518

518:                                              ; preds = %535, %517
  %519 = load i32*, i32** %18, align 8
  %520 = load i32*, i32** %19, align 8
  %521 = icmp ult i32* %519, %520
  br i1 %521, label %522, label %579

522:                                              ; preds = %518
  %523 = call i64 @bytestream2_get_byteu(i32* %20)
  %524 = trunc i64 %523 to i32
  store i32 %524, i32* %28, align 4
  %525 = load i32, i32* %28, align 4
  %526 = and i32 %525, 1
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %535, label %528

528:                                              ; preds = %522
  %529 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %530 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i32 0, i32 1
  %531 = load i32*, i32** %530, align 8
  %532 = load i32, i32* %16, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  store i32 0, i32* %534, align 4
  br label %535

535:                                              ; preds = %528, %522
  %536 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %537 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %536, i32 0, i32 0
  %538 = load i32*, i32** %537, align 8
  %539 = load i32, i32* %28, align 4
  %540 = add nsw i32 %539, 128
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %538, i64 %541
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %545 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %544, i32 0, i32 1
  %546 = load i32*, i32** %545, align 8
  %547 = load i32, i32* %16, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %546, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = add nsw i32 %550, %543
  store i32 %551, i32* %549, align 4
  %552 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %553 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %552, i32 0, i32 1
  %554 = load i32*, i32** %553, align 8
  %555 = load i32, i32* %16, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %554, i64 %556
  %558 = load i32, i32* %557, align 4
  %559 = call i8* @av_clip_int16(i32 %558)
  %560 = ptrtoint i8* %559 to i32
  %561 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %561, i32 0, i32 1
  %563 = load i32*, i32** %562, align 8
  %564 = load i32, i32* %16, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32, i32* %563, i64 %565
  store i32 %560, i32* %566, align 4
  %567 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %568 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %567, i32 0, i32 1
  %569 = load i32*, i32** %568, align 8
  %570 = load i32, i32* %16, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32, i32* %569, i64 %571
  %573 = load i32, i32* %572, align 4
  %574 = load i32*, i32** %18, align 8
  %575 = getelementptr inbounds i32, i32* %574, i32 1
  store i32* %575, i32** %18, align 8
  store i32 %573, i32* %574, align 4
  %576 = load i32, i32* %17, align 4
  %577 = load i32, i32* %16, align 4
  %578 = xor i32 %577, %576
  store i32 %578, i32* %16, align 4
  br label %518

579:                                              ; preds = %518
  br label %606

580:                                              ; preds = %132
  store i32 0, i32* %29, align 4
  br label %581

581:                                              ; preds = %585, %580
  %582 = load i32*, i32** %18, align 8
  %583 = load i32*, i32** %19, align 8
  %584 = icmp ult i32* %582, %583
  br i1 %584, label %585, label %605

585:                                              ; preds = %581
  %586 = call i64 @bytestream2_get_byteu(i32* %20)
  store i64 %586, i64* %30, align 8
  %587 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %588 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %587, i32 0, i32 0
  %589 = load i32*, i32** %588, align 8
  %590 = load i64, i64* %30, align 8
  %591 = getelementptr inbounds i32, i32* %589, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %594 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %593, i32 0, i32 1
  %595 = load i32*, i32** %594, align 8
  %596 = load i32, i32* %29, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32, i32* %595, i64 %597
  %599 = load i32, i32* %598, align 4
  %600 = add nsw i32 %599, %592
  store i32 %600, i32* %598, align 4
  %601 = load i32*, i32** %18, align 8
  %602 = getelementptr inbounds i32, i32* %601, i32 1
  store i32* %602, i32** %18, align 8
  store i32 %600, i32* %601, align 4
  %603 = load i32, i32* %29, align 4
  %604 = xor i32 %603, 1
  store i32 %604, i32* %29, align 4
  br label %581

605:                                              ; preds = %581
  br label %606

606:                                              ; preds = %132, %605, %579, %516, %348, %259, %202
  %607 = load i32*, i32** %8, align 8
  store i32 1, i32* %607, align 4
  %608 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %609 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %608, i32 0, i32 0
  %610 = load i32, i32* %609, align 4
  store i32 %610, i32* %5, align 4
  br label %611

611:                                              ; preds = %606, %130, %96
  %612 = load i32, i32* %5, align 4
  ret i32 %612
}

declare dso_local i32 @bytestream2_init(i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bytestream2_skipu(i32*, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

declare dso_local i64 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @bytestream2_get_le16u(i32*) #1

declare dso_local i8* @av_clip_int16(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
