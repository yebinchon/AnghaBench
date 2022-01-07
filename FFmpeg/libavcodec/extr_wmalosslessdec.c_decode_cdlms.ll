; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmalosslessdec.c_decode_cdlms.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmalosslessdec.c_decode_cdlms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, %struct.TYPE_4__**, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32* }

@MAX_ORDER = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Order[%d][%d] %d > max (%d), not supported\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@decode_cdlms.warned = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"CDLMS of order %d\00", align 1
@WMALL_COEFF_PAD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @decode_cdlms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_cdlms(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %13 = call i32 @get_bits1(i32* %12)
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %417, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %420

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = call i32 @get_bits(i32* %22, i32 3)
  %24 = add nsw i32 %23, 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %24, i32* %30, align 4
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %143, %20
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %32, %39
  br i1 %40, label %41, label %146

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = call i32 @get_bits(i32* %43, i32 7)
  %45 = add nsw i32 %44, 1
  %46 = mul nsw i32 %45, 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %46, i32* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MAX_ORDER, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %41
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %81, i64 %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MAX_ORDER, align 4
  %92 = call i32 @av_log(i32 %75, i32 %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %90, i32 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %95, i64 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %2, align 4
  br label %421

101:                                              ; preds = %41
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %104, i64 %106
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %101
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, 16
  br i1 %120, label %121, label %142

121:                                              ; preds = %116
  %122 = load i32, i32* @decode_cdlms.warned, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %141, label %124

124:                                              ; preds = %121
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %130, i64 %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @avpriv_request_sample(i32 %127, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %124, %121
  store i32 1, i32* @decode_cdlms.warned, align 4
  br label %142

142:                                              ; preds = %141, %116, %101
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %31

146:                                              ; preds = %31
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %172, %146
  %148 = load i32, i32* %5, align 4
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %148, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %147
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = call i32 @get_bits(i32* %159, i32 4)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %163, i64 %165
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i32 %160, i32* %171, align 4
  br label %172

172:                                              ; preds = %157
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  br label %147

175:                                              ; preds = %147
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %373

178:                                              ; preds = %175
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %369, %178
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %180, %187
  br i1 %188, label %189, label %372

189:                                              ; preds = %179
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %191, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %192, i64 %194
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @av_log2(i32 %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = shl i32 1, %203
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %207, i64 %209
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %204, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %189
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %7, align 4
  br label %221

221:                                              ; preds = %218, %189
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 4
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @get_bits(i32* %223, i32 %224)
  %226 = add nsw i32 %225, 1
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %228, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %229, i64 %231
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  store i32 %226, i32* %237, align 8
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %239, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %240, i64 %242
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  %251 = call i32 @av_log2(i32 %250)
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %7, align 4
  %253 = shl i32 1, %252
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %255, align 8
  %257 = load i32, i32* %4, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %256, i64 %258
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  %267 = icmp slt i32 %253, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %221
  %269 = load i32, i32* %7, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %7, align 4
  br label %271

271:                                              ; preds = %268, %221
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 4
  %274 = load i32, i32* %7, align 4
  %275 = call i32 @get_bitsz(i32* %273, i32 %274)
  %276 = add nsw i32 %275, 2
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %278, align 8
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %279, i64 %281
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 3
  store i32 %276, i32* %287, align 4
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %289, align 8
  %291 = load i32, i32* %4, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %290, i64 %292
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = sub nsw i32 32, %299
  store i32 %300, i32* %8, align 4
  %301 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 3
  %303 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %302, align 8
  %304 = load i32, i32* %4, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %303, i64 %305
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 32, %312
  %314 = sub nsw i32 %313, 2
  store i32 %314, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %315

315:                                              ; preds = %365, %271
  %316 = load i32, i32* %10, align 4
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 3
  %319 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %318, align 8
  %320 = load i32, i32* %4, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %319, i64 %321
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = icmp slt i32 %316, %328
  br i1 %329, label %330, label %368

330:                                              ; preds = %315
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 4
  %333 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 3
  %335 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %334, align 8
  %336 = load i32, i32* %4, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %335, i64 %337
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %338, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @get_bits(i32* %332, i32 %344)
  %346 = load i32, i32* %8, align 4
  %347 = shl i32 %345, %346
  %348 = load i32, i32* %9, align 4
  %349 = ashr i32 %347, %348
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 3
  %352 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %351, align 8
  %353 = load i32, i32* %4, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %352, i64 %354
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %355, align 8
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 4
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %10, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  store i32 %349, i32* %364, align 4
  br label %365

365:                                              ; preds = %330
  %366 = load i32, i32* %10, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %10, align 4
  br label %315

368:                                              ; preds = %315
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %5, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %5, align 4
  br label %179

372:                                              ; preds = %179
  br label %373

373:                                              ; preds = %372, %175
  store i32 0, i32* %5, align 4
  br label %374

374:                                              ; preds = %413, %373
  %375 = load i32, i32* %5, align 4
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %376, i32 0, i32 1
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %4, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = icmp slt i32 %375, %382
  br i1 %383, label %384, label %416

384:                                              ; preds = %374
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 3
  %387 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %386, align 8
  %388 = load i32, i32* %4, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %387, i64 %389
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %390, align 8
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 4
  %396 = load i32*, i32** %395, align 8
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 3
  %399 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %398, align 8
  %400 = load i32, i32* %4, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %399, i64 %401
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %402, align 8
  %404 = load i32, i32* %5, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %396, i64 %409
  %411 = load i32, i32* @WMALL_COEFF_PAD_SIZE, align 4
  %412 = call i32 @memset(i32* %410, i32 0, i32 %411)
  br label %413

413:                                              ; preds = %384
  %414 = load i32, i32* %5, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %5, align 4
  br label %374

416:                                              ; preds = %374
  br label %417

417:                                              ; preds = %416
  %418 = load i32, i32* %4, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %4, align 4
  br label %14

420:                                              ; preds = %14
  store i32 0, i32* %2, align 4
  br label %421

421:                                              ; preds = %420, %72
  %422 = load i32, i32* %2, align 4
  ret i32 %422
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @get_bitsz(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
