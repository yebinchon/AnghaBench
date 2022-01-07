; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowdec.c_decode_q_branch.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowdec.c_decode_q_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i32, i32, i64, %struct.TYPE_11__* }

@null_block = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@BLOCK_INTRA = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Invalid ref\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32)* @decode_q_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_q_branch(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %35, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %45, %48
  %50 = load i32, i32* %11, align 4
  %51 = shl i32 %49, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 %53, %54
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %64
  br label %67

66:                                               ; preds = %4
  br label %67

67:                                               ; preds = %66, %58
  %68 = phi %struct.TYPE_11__* [ %65, %58 ], [ @null_block, %66 ]
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %14, align 8
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 %78
  br label %81

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %71
  %82 = phi %struct.TYPE_11__* [ %79, %71 ], [ @null_block, %80 ]
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %15, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %96
  br label %100

98:                                               ; preds = %85, %81
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  br label %100

100:                                              ; preds = %98, %88
  %101 = phi %struct.TYPE_11__* [ %97, %88 ], [ %99, %98 ]
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %16, align 8
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %112, %108
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load i32, i32* %11, align 4
  %123 = shl i32 1, %122
  %124 = add nsw i32 %121, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %125
  br label %129

127:                                              ; preds = %112, %104, %100
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  br label %129

129:                                              ; preds = %127, %115
  %130 = phi %struct.TYPE_11__* [ %126, %115 ], [ %128, %127 ]
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %17, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = mul nsw i32 2, %133
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 2, %137
  %139 = add nsw i32 %134, %138
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %139, %142
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %143, %146
  store i32 %147, i32* %18, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %129
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @null_block, i32 0, i32 1), align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @null_block, i32 0, i32 1), align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @null_block, i32 0, i32 1), align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @null_block, i32 0, i32 2), align 8
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @null_block, i32 0, i32 3), align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @null_block, i32 0, i32 4), align 8
  %169 = load i32, i32* @BLOCK_INTRA, align 4
  %170 = call i32 @set_blocks(%struct.TYPE_10__* %153, i32 %154, i32 %155, i32 %156, i32 %159, i32 %162, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  store i32 0, i32* %5, align 4
  br label %496

171:                                              ; preds = %129
  %172 = load i32, i32* %7, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %172, %175
  br i1 %176, label %189, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 5
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 4
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 4, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = call i64 @get_rac(i32* %179, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %444

189:                                              ; preds = %177, %171
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %23, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 1
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %24, align 4
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = mul i32 2, %207
  %209 = call i32 @av_log2(i32 %208)
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = mul i32 2, %212
  %214 = call i32 @av_log2(i32 %213)
  %215 = add nsw i32 %209, %214
  store i32 %215, i32* %27, align 4
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = sub nsw i32 %218, %221
  %223 = call i32 @FFABS(i32 %222)
  %224 = mul nsw i32 2, %223
  %225 = call i32 @av_log2(i32 %224)
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 %228, %231
  %233 = call i32 @FFABS(i32 %232)
  %234 = mul nsw i32 2, %233
  %235 = call i32 @av_log2(i32 %234)
  %236 = mul nsw i32 0, %235
  %237 = add nsw i32 %225, %236
  store i32 %237, i32* %28, align 4
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %240, %243
  %245 = call i32 @FFABS(i32 %244)
  %246 = mul nsw i32 2, %245
  %247 = call i32 @av_log2(i32 %246)
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = sub nsw i32 %250, %253
  %255 = call i32 @FFABS(i32 %254)
  %256 = mul nsw i32 2, %255
  %257 = call i32 @av_log2(i32 %256)
  %258 = mul nsw i32 0, %257
  %259 = add nsw i32 %247, %258
  store i32 %259, i32* %29, align 4
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 5
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 1, %267
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %268, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %264, i64 %273
  %275 = call i64 @get_rac(i32* %261, i32* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %189
  %278 = load i32, i32* @BLOCK_INTRA, align 4
  br label %280

279:                                              ; preds = %189
  br label %280

280:                                              ; preds = %279, %277
  %281 = phi i32 [ %278, %277 ], [ 0, %279 ]
  store i32 %281, i32* %20, align 4
  %282 = load i32, i32* %20, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %351

284:                                              ; preds = %280
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %289 = call i32 @pred_mv(%struct.TYPE_10__* %285, i32* %21, i32* %22, i32 0, %struct.TYPE_11__* %286, %struct.TYPE_11__* %287, %struct.TYPE_11__* %288)
  %290 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 5
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 4
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 32
  %296 = call i8* @get_symbol(i32* %291, i32* %295, i32 1)
  %297 = ptrtoint i8* %296 to i32
  store i32 %297, i32* %30, align 4
  %298 = load i32, i32* %30, align 4
  %299 = icmp slt i32 %298, -255
  br i1 %299, label %303, label %300

300:                                              ; preds = %284
  %301 = load i32, i32* %30, align 4
  %302 = icmp sgt i32 %301, 255
  br i1 %302, label %303, label %305

303:                                              ; preds = %300, %284
  %304 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %304, i32* %5, align 4
  br label %496

305:                                              ; preds = %300
  %306 = load i32, i32* %30, align 4
  %307 = load i32, i32* %23, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %23, align 4
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = icmp sgt i32 %311, 2
  br i1 %312, label %313, label %350

313:                                              ; preds = %305
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 5
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 4
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 64
  %320 = call i8* @get_symbol(i32* %315, i32* %319, i32 1)
  %321 = ptrtoint i8* %320 to i32
  store i32 %321, i32* %31, align 4
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 5
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 4
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 96
  %328 = call i8* @get_symbol(i32* %323, i32* %327, i32 1)
  %329 = ptrtoint i8* %328 to i32
  store i32 %329, i32* %32, align 4
  %330 = load i32, i32* %31, align 4
  %331 = icmp slt i32 %330, -255
  br i1 %331, label %341, label %332

332:                                              ; preds = %313
  %333 = load i32, i32* %31, align 4
  %334 = icmp sgt i32 %333, 255
  br i1 %334, label %341, label %335

335:                                              ; preds = %332
  %336 = load i32, i32* %32, align 4
  %337 = icmp slt i32 %336, -255
  br i1 %337, label %341, label %338

338:                                              ; preds = %335
  %339 = load i32, i32* %32, align 4
  %340 = icmp sgt i32 %339, 255
  br i1 %340, label %341, label %343

341:                                              ; preds = %338, %335, %332, %313
  %342 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %342, i32* %5, align 4
  br label %496

343:                                              ; preds = %338
  %344 = load i32, i32* %31, align 4
  %345 = load i32, i32* %24, align 4
  %346 = add nsw i32 %345, %344
  store i32 %346, i32* %24, align 4
  %347 = load i32, i32* %32, align 4
  %348 = load i32, i32* %25, align 4
  %349 = add nsw i32 %348, %347
  store i32 %349, i32* %25, align 4
  br label %350

350:                                              ; preds = %343, %305
  br label %431

351:                                              ; preds = %280
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = icmp sgt i32 %354, 1
  br i1 %355, label %356, label %369

356:                                              ; preds = %351
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 5
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %359, i32 0, i32 4
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %27, align 4
  %363 = mul nsw i32 32, %362
  %364 = add nsw i32 1152, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %361, i64 %365
  %367 = call i8* @get_symbol(i32* %358, i32* %366, i32 0)
  %368 = ptrtoint i8* %367 to i32
  store i32 %368, i32* %26, align 4
  br label %369

369:                                              ; preds = %356, %351
  %370 = load i32, i32* %26, align 4
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = icmp uge i32 %370, %373
  br i1 %374, label %375, label %382

375:                                              ; preds = %369
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @AV_LOG_ERROR, align 4
  %380 = call i32 @av_log(i32 %378, i32 %379, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %381 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %381, i32* %5, align 4
  br label %496

382:                                              ; preds = %369
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %384 = load i32, i32* %26, align 4
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %386 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %388 = call i32 @pred_mv(%struct.TYPE_10__* %383, i32* %21, i32* %22, i32 %384, %struct.TYPE_11__* %385, %struct.TYPE_11__* %386, %struct.TYPE_11__* %387)
  %389 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 5
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 4
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %28, align 4
  %395 = load i32, i32* %26, align 4
  %396 = icmp ne i32 %395, 0
  %397 = xor i1 %396, true
  %398 = xor i1 %397, true
  %399 = zext i1 %398 to i32
  %400 = mul nsw i32 16, %399
  %401 = add nsw i32 %394, %400
  %402 = mul nsw i32 32, %401
  %403 = add nsw i32 128, %402
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %393, i64 %404
  %406 = call i8* @get_symbol(i32* %390, i32* %405, i32 1)
  %407 = ptrtoint i8* %406 to i32
  %408 = load i32, i32* %21, align 4
  %409 = add i32 %408, %407
  store i32 %409, i32* %21, align 4
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i32 0, i32 5
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 4
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %29, align 4
  %416 = load i32, i32* %26, align 4
  %417 = icmp ne i32 %416, 0
  %418 = xor i1 %417, true
  %419 = xor i1 %418, true
  %420 = zext i1 %419 to i32
  %421 = mul nsw i32 16, %420
  %422 = add nsw i32 %415, %421
  %423 = mul nsw i32 32, %422
  %424 = add nsw i32 128, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %414, i64 %425
  %427 = call i8* @get_symbol(i32* %411, i32* %426, i32 1)
  %428 = ptrtoint i8* %427 to i32
  %429 = load i32, i32* %22, align 4
  %430 = add i32 %429, %428
  store i32 %430, i32* %22, align 4
  br label %431

431:                                              ; preds = %382, %350
  %432 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %433 = load i32, i32* %7, align 4
  %434 = load i32, i32* %8, align 4
  %435 = load i32, i32* %9, align 4
  %436 = load i32, i32* %23, align 4
  %437 = load i32, i32* %24, align 4
  %438 = load i32, i32* %25, align 4
  %439 = load i32, i32* %21, align 4
  %440 = load i32, i32* %22, align 4
  %441 = load i32, i32* %26, align 4
  %442 = load i32, i32* %20, align 4
  %443 = call i32 @set_blocks(%struct.TYPE_10__* %432, i32 %433, i32 %434, i32 %435, i32 %436, i32 %437, i32 %438, i32 %439, i32 %440, i32 %441, i32 %442)
  br label %495

444:                                              ; preds = %177
  %445 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %446 = load i32, i32* %7, align 4
  %447 = add nsw i32 %446, 1
  %448 = load i32, i32* %8, align 4
  %449 = mul nsw i32 2, %448
  %450 = add nsw i32 %449, 0
  %451 = load i32, i32* %9, align 4
  %452 = mul nsw i32 2, %451
  %453 = add nsw i32 %452, 0
  %454 = call i32 @decode_q_branch(%struct.TYPE_10__* %445, i32 %447, i32 %450, i32 %453)
  store i32 %454, i32* %19, align 4
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %492, label %456

456:                                              ; preds = %444
  %457 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %458 = load i32, i32* %7, align 4
  %459 = add nsw i32 %458, 1
  %460 = load i32, i32* %8, align 4
  %461 = mul nsw i32 2, %460
  %462 = add nsw i32 %461, 1
  %463 = load i32, i32* %9, align 4
  %464 = mul nsw i32 2, %463
  %465 = add nsw i32 %464, 0
  %466 = call i32 @decode_q_branch(%struct.TYPE_10__* %457, i32 %459, i32 %462, i32 %465)
  store i32 %466, i32* %19, align 4
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %492, label %468

468:                                              ; preds = %456
  %469 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %470 = load i32, i32* %7, align 4
  %471 = add nsw i32 %470, 1
  %472 = load i32, i32* %8, align 4
  %473 = mul nsw i32 2, %472
  %474 = add nsw i32 %473, 0
  %475 = load i32, i32* %9, align 4
  %476 = mul nsw i32 2, %475
  %477 = add nsw i32 %476, 1
  %478 = call i32 @decode_q_branch(%struct.TYPE_10__* %469, i32 %471, i32 %474, i32 %477)
  store i32 %478, i32* %19, align 4
  %479 = icmp slt i32 %478, 0
  br i1 %479, label %492, label %480

480:                                              ; preds = %468
  %481 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %482 = load i32, i32* %7, align 4
  %483 = add nsw i32 %482, 1
  %484 = load i32, i32* %8, align 4
  %485 = mul nsw i32 2, %484
  %486 = add nsw i32 %485, 1
  %487 = load i32, i32* %9, align 4
  %488 = mul nsw i32 2, %487
  %489 = add nsw i32 %488, 1
  %490 = call i32 @decode_q_branch(%struct.TYPE_10__* %481, i32 %483, i32 %486, i32 %489)
  store i32 %490, i32* %19, align 4
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %480, %468, %456, %444
  %493 = load i32, i32* %19, align 4
  store i32 %493, i32* %5, align 4
  br label %496

494:                                              ; preds = %480
  br label %495

495:                                              ; preds = %494, %431
  store i32 0, i32* %5, align 4
  br label %496

496:                                              ; preds = %495, %492, %375, %341, %303, %152
  %497 = load i32, i32* %5, align 4
  ret i32 %497
}

declare dso_local i32 @set_blocks(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @get_rac(i32*, i32*) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @pred_mv(%struct.TYPE_10__*, i32*, i32*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i8* @get_symbol(i32*, i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
