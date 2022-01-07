; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcenc.c_sbc_pack_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcenc.c_sbc_pack_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }
%struct.sbc_frame = type { i32, i32, i32, i32, i32, i32, i32, i32**, i32***, i32 }

@MSBC_SYNCWORD = common dso_local global i32 0, align 4
@SBC_SYNCWORD = common dso_local global i32 0, align 4
@STEREO = common dso_local global i32 0, align 4
@JOINT_STEREO = common dso_local global i32 0, align 4
@SCALE_OUT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, %struct.sbc_frame*, i32, i32)* @sbc_pack_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sbc_pack_frame(%struct.TYPE_3__* %0, %struct.sbc_frame* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.sbc_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [11 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x [8 x i32]], align 16
  %18 = alloca [2 x [8 x i32]], align 16
  %19 = alloca [2 x [8 x i32]], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store %struct.sbc_frame* %1, %struct.sbc_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = bitcast [11 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 44, i1 false)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %4
  %24 = load i32, i32* @MSBC_SYNCWORD, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 0, i32* %36, align 4
  br label %132

37:                                               ; preds = %4
  %38 = load i32, i32* @SBC_SYNCWORD, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %44 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 3
  %47 = shl i32 %46, 6
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %53 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 2
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %56, 3
  %58 = shl i32 %57, 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %66 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 3
  %69 = shl i32 %68, 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 4
  %76 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %77 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 1
  %80 = shl i32 %79, 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %80
  store i32 %86, i32* %84, align 4
  %87 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %88 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 8
  %91 = zext i1 %90 to i32
  %92 = and i32 %91, 1
  %93 = shl i32 %92, 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %93
  store i32 %99, i32* %97, align 4
  %100 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %101 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 %102, i32* %106, align 4
  %107 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %108 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %111 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %114 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @STEREO, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %37
  %119 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %120 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @JOINT_STEREO, align 4
  %123 = icmp eq i32 %121, %122
  br label %124

124:                                              ; preds = %118, %37
  %125 = phi i1 [ true, %37 ], [ %123, %118 ]
  %126 = zext i1 %125 to i32
  %127 = add nsw i32 4, %126
  %128 = shl i32 %112, %127
  %129 = icmp sgt i32 %109, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i64 -5, i64* %5, align 8
  br label %427

131:                                              ; preds = %124
  br label %132

132:                                              ; preds = %131, %23
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  store i32 %137, i32* %138, align 16
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 1
  store i32 %143, i32* %144, align 4
  store i32 16, i32* %12, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @init_put_bits(i32* %10, i32* %148, i32 %151)
  %153 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %154 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @JOINT_STEREO, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %132
  %159 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %160 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @put_bits(i32* %10, i32 %161, i32 %162)
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %12, align 4
  %166 = ashr i32 %165, 3
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %167
  store i32 %164, i32* %168, align 4
  %169 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %170 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %158, %132
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %232, %174
  %176 = load i32, i32* %14, align 4
  %177 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %178 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %235

181:                                              ; preds = %175
  store i32 0, i32* %15, align 4
  br label %182

182:                                              ; preds = %228, %181
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %185 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %231

188:                                              ; preds = %182
  %189 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %190 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %189, i32 0, i32 7
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 15
  %201 = call i32 @put_bits(i32* %10, i32 4, i32 %200)
  %202 = load i32, i32* %12, align 4
  %203 = ashr i32 %202, 3
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 4
  store i32 %207, i32* %205, align 4
  %208 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %209 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %208, i32 0, i32 7
  %210 = load i32**, i32*** %209, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %15, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 15
  %220 = load i32, i32* %12, align 4
  %221 = ashr i32 %220, 3
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %219
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, 4
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %188
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %182

231:                                              ; preds = %182
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  br label %175

235:                                              ; preds = %175
  %236 = load i32, i32* %12, align 4
  %237 = srem i32 %236, 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %235
  %240 = load i32, i32* %12, align 4
  %241 = srem i32 %240, 8
  %242 = sub nsw i32 8, %241
  %243 = load i32, i32* %12, align 4
  %244 = ashr i32 %243, 3
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, %242
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %239, %235
  %250 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %251 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %250, i32 0, i32 9
  %252 = load i32, i32* %251, align 8
  %253 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  %254 = load i32, i32* %12, align 4
  %255 = call i32 @ff_sbc_crc8(i32 %252, i32* %253, i32 %254)
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 3
  store i32 %255, i32* %259, align 4
  %260 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %261 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %17, i64 0, i64 0
  %262 = bitcast [8 x i32]* %261 to i32**
  %263 = call i32 @ff_sbc_calculate_bits(%struct.sbc_frame* %260, i32** %262)
  store i32 0, i32* %14, align 4
  br label %264

264:                                              ; preds = %334, %249
  %265 = load i32, i32* %14, align 4
  %266 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %267 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 8
  %269 = icmp slt i32 %265, %268
  br i1 %269, label %270, label %337

270:                                              ; preds = %264
  store i32 0, i32* %15, align 4
  br label %271

271:                                              ; preds = %330, %270
  %272 = load i32, i32* %15, align 4
  %273 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %274 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = icmp slt i32 %272, %275
  br i1 %276, label %277, label %333

277:                                              ; preds = %271
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %17, i64 0, i64 %279
  %281 = load i32, i32* %15, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [8 x i32], [8 x i32]* %280, i64 0, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = shl i32 1, %284
  %286 = sub nsw i32 %285, 1
  %287 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %288 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %287, i32 0, i32 7
  %289 = load i32**, i32*** %288, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %289, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @SCALE_OUT_BITS, align 4
  %299 = add nsw i32 %297, %298
  %300 = add nsw i32 %299, 2
  %301 = sub nsw i32 32, %300
  %302 = shl i32 %286, %301
  %303 = load i32, i32* %14, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %18, i64 0, i64 %304
  %306 = load i32, i32* %15, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [8 x i32], [8 x i32]* %305, i64 0, i64 %307
  store i32 %302, i32* %308, align 4
  %309 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %310 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %309, i32 0, i32 7
  %311 = load i32**, i32*** %310, align 8
  %312 = load i32, i32* %14, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32*, i32** %311, i64 %313
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %15, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @SCALE_OUT_BITS, align 4
  %321 = add nsw i32 %319, %320
  %322 = add nsw i32 %321, 1
  %323 = shl i32 1, %322
  %324 = load i32, i32* %14, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %19, i64 0, i64 %325
  %327 = load i32, i32* %15, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [8 x i32], [8 x i32]* %326, i64 0, i64 %328
  store i32 %323, i32* %329, align 4
  br label %330

330:                                              ; preds = %277
  %331 = load i32, i32* %15, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %15, align 4
  br label %271

333:                                              ; preds = %271
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %14, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %14, align 4
  br label %264

337:                                              ; preds = %264
  store i32 0, i32* %16, align 4
  br label %338

338:                                              ; preds = %418, %337
  %339 = load i32, i32* %16, align 4
  %340 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %341 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = icmp slt i32 %339, %342
  br i1 %343, label %344, label %421

344:                                              ; preds = %338
  store i32 0, i32* %14, align 4
  br label %345

345:                                              ; preds = %414, %344
  %346 = load i32, i32* %14, align 4
  %347 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %348 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 8
  %350 = icmp slt i32 %346, %349
  br i1 %350, label %351, label %417

351:                                              ; preds = %345
  store i32 0, i32* %15, align 4
  br label %352

352:                                              ; preds = %410, %351
  %353 = load i32, i32* %15, align 4
  %354 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %355 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %413

358:                                              ; preds = %352
  %359 = load i32, i32* %14, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %17, i64 0, i64 %360
  %362 = load i32, i32* %15, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [8 x i32], [8 x i32]* %361, i64 0, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %358
  br label %410

368:                                              ; preds = %358
  %369 = load i32, i32* %14, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %18, i64 0, i64 %370
  %372 = load i32, i32* %15, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [8 x i32], [8 x i32]* %371, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %14, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %19, i64 0, i64 %377
  %379 = load i32, i32* %15, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [8 x i32], [8 x i32]* %378, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %384 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %383, i32 0, i32 8
  %385 = load i32***, i32**** %384, align 8
  %386 = load i32, i32* %16, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32**, i32*** %385, i64 %387
  %389 = load i32**, i32*** %388, align 8
  %390 = load i32, i32* %14, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32*, i32** %389, i64 %391
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %15, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %382, %397
  %399 = mul nsw i32 %375, %398
  %400 = ashr i32 %399, 32
  store i32 %400, i32* %13, align 4
  %401 = load i32, i32* %14, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* %17, i64 0, i64 %402
  %404 = load i32, i32* %15, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [8 x i32], [8 x i32]* %403, i64 0, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %13, align 4
  %409 = call i32 @put_bits(i32* %10, i32 %407, i32 %408)
  br label %410

410:                                              ; preds = %368, %367
  %411 = load i32, i32* %15, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %15, align 4
  br label %352

413:                                              ; preds = %352
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %14, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %14, align 4
  br label %345

417:                                              ; preds = %345
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %16, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %16, align 4
  br label %338

421:                                              ; preds = %338
  %422 = call i32 @flush_put_bits(i32* %10)
  %423 = call i32 @put_bits_count(i32* %10)
  %424 = add nsw i32 %423, 7
  %425 = sdiv i32 %424, 8
  %426 = sext i32 %425 to i64
  store i64 %426, i64* %5, align 8
  br label %427

427:                                              ; preds = %421, %130
  %428 = load i64, i64* %5, align 8
  ret i64 %428
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #2

declare dso_local i32 @put_bits(i32*, i32, i32) #2

declare dso_local i32 @ff_sbc_crc8(i32, i32*, i32) #2

declare dso_local i32 @ff_sbc_calculate_bits(%struct.sbc_frame*, i32**) #2

declare dso_local i32 @flush_put_bits(i32*) #2

declare dso_local i32 @put_bits_count(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
