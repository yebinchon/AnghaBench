; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_encode_q_branch2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_encode_q_branch2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32*, i32, i64, %struct.TYPE_13__* }

@null_block = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BLOCK_INTRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i32, i32)* @encode_q_branch2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_q_branch2(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %39, %42
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %54
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %13, align 8
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 7
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i64 %64
  br label %67

66:                                               ; preds = %4
  br label %67

67:                                               ; preds = %66, %58
  %68 = phi %struct.TYPE_13__* [ %65, %58 ], [ @null_block, %66 ]
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %14, align 8
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %78
  br label %81

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %71
  %82 = phi %struct.TYPE_13__* [ %79, %71 ], [ @null_block, %80 ]
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %15, align 8
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 7
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 %96
  br label %100

98:                                               ; preds = %85, %81
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  br label %100

100:                                              ; preds = %98, %88
  %101 = phi %struct.TYPE_13__* [ %97, %88 ], [ %99, %98 ]
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %16, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112, %108
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load i32, i32* %10, align 4
  %123 = shl i32 1, %122
  %124 = add nsw i32 %121, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i64 %125
  br label %129

127:                                              ; preds = %112, %104, %100
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  br label %129

129:                                              ; preds = %127, %115
  %130 = phi %struct.TYPE_13__* [ %126, %115 ], [ %128, %127 ]
  store %struct.TYPE_13__* %130, %struct.TYPE_13__** %17, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %18, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %19, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %20, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 2, %148
  %150 = call i32 @av_log2(i32 %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = mul nsw i32 2, %153
  %155 = call i32 @av_log2(i32 %154)
  %156 = add nsw i32 %150, %155
  store i32 %156, i32* %23, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %159, %162
  %164 = call i32 @FFABS(i32 %163)
  %165 = mul nsw i32 2, %164
  %166 = call i32 @av_log2(i32 %165)
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = mul nsw i32 16, %173
  %175 = add nsw i32 %166, %174
  store i32 %175, i32* %24, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  %183 = call i32 @FFABS(i32 %182)
  %184 = mul nsw i32 2, %183
  %185 = call i32 @av_log2(i32 %184)
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = mul nsw i32 16, %192
  %194 = add nsw i32 %185, %193
  store i32 %194, i32* %25, align 4
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 2, %197
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 2, %201
  %203 = add nsw i32 %198, %202
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %203, %206
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %207, %210
  store i32 %211, i32* %26, align 4
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %129
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %20, align 4
  %224 = load i32, i32* @BLOCK_INTRA, align 4
  %225 = call i32 @set_blocks(%struct.TYPE_12__* %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32 0, i32 0, i32 0, i32 %224)
  br label %512

226:                                              ; preds = %129
  %227 = load i32, i32* %6, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %227, %230
  br i1 %231, label %232, label %314

232:                                              ; preds = %226
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i64 1
  %236 = call i64 @same_block(%struct.TYPE_13__* %233, %struct.TYPE_13__* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %266

238:                                              ; preds = %232
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i64 %242
  %244 = call i64 @same_block(%struct.TYPE_13__* %239, %struct.TYPE_13__* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %266

246:                                              ; preds = %238
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i64 1
  %253 = call i64 @same_block(%struct.TYPE_13__* %247, %struct.TYPE_13__* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %246
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 5
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %26, align 4
  %262 = add nsw i32 4, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = call i32 @put_rac(i32* %257, i32* %264, i32 1)
  br label %313

266:                                              ; preds = %246, %238, %232
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 5
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 4
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %26, align 4
  %273 = add nsw i32 4, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = call i32 @put_rac(i32* %268, i32* %275, i32 0)
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %278 = load i32, i32* %6, align 4
  %279 = add nsw i32 %278, 1
  %280 = load i32, i32* %7, align 4
  %281 = mul nsw i32 2, %280
  %282 = add nsw i32 %281, 0
  %283 = load i32, i32* %8, align 4
  %284 = mul nsw i32 2, %283
  %285 = add nsw i32 %284, 0
  call void @encode_q_branch2(%struct.TYPE_12__* %277, i32 %279, i32 %282, i32 %285)
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 1
  %289 = load i32, i32* %7, align 4
  %290 = mul nsw i32 2, %289
  %291 = add nsw i32 %290, 1
  %292 = load i32, i32* %8, align 4
  %293 = mul nsw i32 2, %292
  %294 = add nsw i32 %293, 0
  call void @encode_q_branch2(%struct.TYPE_12__* %286, i32 %288, i32 %291, i32 %294)
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  %298 = load i32, i32* %7, align 4
  %299 = mul nsw i32 2, %298
  %300 = add nsw i32 %299, 0
  %301 = load i32, i32* %8, align 4
  %302 = mul nsw i32 2, %301
  %303 = add nsw i32 %302, 1
  call void @encode_q_branch2(%struct.TYPE_12__* %295, i32 %297, i32 %300, i32 %303)
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  %307 = load i32, i32* %7, align 4
  %308 = mul nsw i32 2, %307
  %309 = add nsw i32 %308, 1
  %310 = load i32, i32* %8, align 4
  %311 = mul nsw i32 2, %310
  %312 = add nsw i32 %311, 1
  call void @encode_q_branch2(%struct.TYPE_12__* %304, i32 %306, i32 %309, i32 %312)
  br label %512

313:                                              ; preds = %255
  br label %314

314:                                              ; preds = %313, %226
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @BLOCK_INTRA, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %416

321:                                              ; preds = %314
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %326 = call i32 @pred_mv(%struct.TYPE_12__* %322, i32* %21, i32* %22, i32 0, %struct.TYPE_13__* %323, %struct.TYPE_13__* %324, %struct.TYPE_13__* %325)
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 5
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 4
  %331 = load i32*, i32** %330, align 8
  %332 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = and i32 %334, 1
  %336 = add nsw i32 1, %335
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 8
  %340 = and i32 %339, 1
  %341 = add nsw i32 %336, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %331, i64 %342
  %344 = call i32 @put_rac(i32* %328, i32* %343, i32 1)
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 5
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 4
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 32
  %351 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %18, align 4
  %357 = sub nsw i32 %355, %356
  %358 = call i32 @put_symbol(i32* %346, i32* %350, i32 %357, i32 1)
  %359 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = icmp sgt i32 %361, 2
  br i1 %362, label %363, label %392

363:                                              ; preds = %321
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 5
  %366 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 4
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 64
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* %19, align 4
  %376 = sub nsw i32 %374, %375
  %377 = call i32 @put_symbol(i32* %365, i32* %369, i32 %376, i32 1)
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 5
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 4
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 96
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 0
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 2
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %20, align 4
  %390 = sub nsw i32 %388, %389
  %391 = call i32 @put_symbol(i32* %379, i32* %383, i32 %390, i32 1)
  br label %392

392:                                              ; preds = %363, %321
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %394 = load i32, i32* %6, align 4
  %395 = load i32, i32* %7, align 4
  %396 = load i32, i32* %8, align 4
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 0
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 1
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 2
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %21, align 4
  %413 = load i32, i32* %22, align 4
  %414 = load i32, i32* @BLOCK_INTRA, align 4
  %415 = call i32 @set_blocks(%struct.TYPE_12__* %393, i32 %394, i32 %395, i32 %396, i32 %401, i32 %406, i32 %411, i32 %412, i32 %413, i32 0, i32 %414)
  br label %512

416:                                              ; preds = %314
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %424 = call i32 @pred_mv(%struct.TYPE_12__* %417, i32* %21, i32* %22, i32 %420, %struct.TYPE_13__* %421, %struct.TYPE_13__* %422, %struct.TYPE_13__* %423)
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 5
  %427 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 4
  %429 = load i32*, i32** %428, align 8
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 8
  %433 = and i32 %432, 1
  %434 = add nsw i32 1, %433
  %435 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 8
  %438 = and i32 %437, 1
  %439 = add nsw i32 %434, %438
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %429, i64 %440
  %442 = call i32 @put_rac(i32* %426, i32* %441, i32 0)
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = icmp sgt i32 %445, 1
  br i1 %446, label %447, label %462

447:                                              ; preds = %416
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 5
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i32 0, i32 4
  %452 = load i32*, i32** %451, align 8
  %453 = load i32, i32* %23, align 4
  %454 = mul nsw i32 32, %453
  %455 = add nsw i32 1152, %454
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %452, i64 %456
  %458 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @put_symbol(i32* %449, i32* %457, i32 %460, i32 0)
  br label %462

462:                                              ; preds = %447, %416
  %463 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %463, i32 0, i32 5
  %465 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %465, i32 0, i32 4
  %467 = load i32*, i32** %466, align 8
  %468 = load i32, i32* %24, align 4
  %469 = mul nsw i32 32, %468
  %470 = add nsw i32 128, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %467, i64 %471
  %473 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %474 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* %21, align 4
  %477 = sub nsw i32 %475, %476
  %478 = call i32 @put_symbol(i32* %464, i32* %472, i32 %477, i32 1)
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 5
  %481 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i32 0, i32 4
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %25, align 4
  %485 = mul nsw i32 32, %484
  %486 = add nsw i32 128, %485
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, i32* %483, i64 %487
  %489 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %490 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %489, i32 0, i32 3
  %491 = load i32, i32* %490, align 8
  %492 = load i32, i32* %22, align 4
  %493 = sub nsw i32 %491, %492
  %494 = call i32 @put_symbol(i32* %480, i32* %488, i32 %493, i32 1)
  %495 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %496 = load i32, i32* %6, align 4
  %497 = load i32, i32* %7, align 4
  %498 = load i32, i32* %8, align 4
  %499 = load i32, i32* %18, align 4
  %500 = load i32, i32* %19, align 4
  %501 = load i32, i32* %20, align 4
  %502 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %503 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 8
  %508 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %509 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = call i32 @set_blocks(%struct.TYPE_12__* %495, i32 %496, i32 %497, i32 %498, i32 %499, i32 %500, i32 %501, i32 %504, i32 %507, i32 %510, i32 0)
  br label %512

512:                                              ; preds = %216, %266, %462, %392
  ret void
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @set_blocks(%struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @same_block(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @put_rac(i32*, i32*, i32) #1

declare dso_local i32 @pred_mv(%struct.TYPE_12__*, i32*, i32*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @put_symbol(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
