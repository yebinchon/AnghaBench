; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvenc.c_encode_422_bitstream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_huffyuvenc.c_encode_422_bitstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32**, i32**, %struct.TYPE_7__, i32**, i64, %struct.TYPE_8__*, i32** }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"encoded frame too large\0A\00", align 1
@AV_CODEC_FLAG_PASS1 = common dso_local global i32 0, align 4
@AV_CODEC_FLAG2_NO_OUTPUT = common dso_local global i32 0, align 4
@LOAD4 = common dso_local global i32 0, align 4
@u0 = common dso_local global i64 0, align 8
@v0 = common dso_local global i64 0, align 8
@y0 = common dso_local global i64 0, align 8
@y1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @encode_422_bitstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_422_bitstream(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 7
  %26 = load i32**, i32*** %25, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %9, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 7
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32* %40, i32** %10, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 7
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32* %49, i32** %11, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %53, %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = call i32 @put_bits_count(%struct.TYPE_7__* %60)
  %62 = ashr i32 %61, 3
  %63 = sub nsw i32 %58, %62
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 8, %64
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load i32, i32* @AV_LOG_ERROR, align 4
  %72 = call i32 @av_log(%struct.TYPE_8__* %70, i32 %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %445

73:                                               ; preds = %3
  %74 = load i32, i32* %7, align 4
  %75 = sdiv i32 %74, 2
  store i32 %75, i32* %7, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @AV_CODEC_FLAG_PASS1, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %155

82:                                               ; preds = %73
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %151, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %154

87:                                               ; preds = %83
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 2, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %8, align 4
  %96 = mul nsw i32 2, %95
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %13, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %14, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %15, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  %113 = load i32**, i32*** %112, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = load i32**, i32*** %122, align 8
  %124 = getelementptr inbounds i32*, i32** %123, i64 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 4
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %87
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %83

154:                                              ; preds = %83
  br label %155

155:                                              ; preds = %154, %73
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @AV_CODEC_FLAG2_NO_OUTPUT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  br label %445

165:                                              ; preds = %155
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %327

170:                                              ; preds = %165
  store i32 0, i32* %8, align 4
  br label %171

171:                                              ; preds = %323, %170
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %326

175:                                              ; preds = %171
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %8, align 4
  %178 = mul nsw i32 2, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %16, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = load i32, i32* %8, align 4
  %184 = mul nsw i32 2, %183
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %17, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %18, align 4
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %19, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 4
  %201 = load i32**, i32*** %200, align 8
  %202 = getelementptr inbounds i32*, i32** %201, i64 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32**, i32*** %212, align 8
  %214 = getelementptr inbounds i32*, i32** %213, i64 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load i32**, i32*** %221, align 8
  %223 = getelementptr inbounds i32*, i32** %222, i64 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %16, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @put_bits(%struct.TYPE_7__* %210, i32 %219, i32 %228)
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 4
  %232 = load i32**, i32*** %231, align 8
  %233 = getelementptr inbounds i32*, i32** %232, i64 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %18, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  %244 = load i32**, i32*** %243, align 8
  %245 = getelementptr inbounds i32*, i32** %244, i64 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %18, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i32**, i32*** %252, align 8
  %254 = getelementptr inbounds i32*, i32** %253, i64 1
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %18, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @put_bits(%struct.TYPE_7__* %241, i32 %250, i32 %259)
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 4
  %263 = load i32**, i32*** %262, align 8
  %264 = getelementptr inbounds i32*, i32** %263, i64 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 2
  %275 = load i32**, i32*** %274, align 8
  %276 = getelementptr inbounds i32*, i32** %275, i64 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %17, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 1
  %284 = load i32**, i32*** %283, align 8
  %285 = getelementptr inbounds i32*, i32** %284, i64 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @put_bits(%struct.TYPE_7__* %272, i32 %281, i32 %290)
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 4
  %294 = load i32**, i32*** %293, align 8
  %295 = getelementptr inbounds i32*, i32** %294, i64 2
  %296 = load i32*, i32** %295, align 8
  %297 = load i32, i32* %19, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %299, align 4
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 2
  %306 = load i32**, i32*** %305, align 8
  %307 = getelementptr inbounds i32*, i32** %306, i64 2
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %19, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 1
  %315 = load i32**, i32*** %314, align 8
  %316 = getelementptr inbounds i32*, i32** %315, i64 2
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %19, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @put_bits(%struct.TYPE_7__* %303, i32 %312, i32 %321)
  br label %323

323:                                              ; preds = %175
  %324 = load i32, i32* %8, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %8, align 4
  br label %171

326:                                              ; preds = %171
  br label %444

327:                                              ; preds = %165
  store i32 0, i32* %8, align 4
  br label %328

328:                                              ; preds = %440, %327
  %329 = load i32, i32* %8, align 4
  %330 = load i32, i32* %7, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %443

332:                                              ; preds = %328
  %333 = load i32*, i32** %9, align 8
  %334 = load i32, i32* %8, align 4
  %335 = mul nsw i32 2, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %20, align 4
  %339 = load i32*, i32** %9, align 8
  %340 = load i32, i32* %8, align 4
  %341 = mul nsw i32 2, %340
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %339, i64 %343
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %21, align 4
  %346 = load i32*, i32** %10, align 8
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  store i32 %350, i32* %22, align 4
  %351 = load i32*, i32** %11, align 8
  %352 = load i32, i32* %8, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %23, align 4
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 3
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 2
  %360 = load i32**, i32*** %359, align 8
  %361 = getelementptr inbounds i32*, i32** %360, i64 0
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %20, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 1
  %369 = load i32**, i32*** %368, align 8
  %370 = getelementptr inbounds i32*, i32** %369, i64 0
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %20, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32, i32* %371, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @put_bits(%struct.TYPE_7__* %357, i32 %366, i32 %375)
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 3
  %379 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %379, i32 0, i32 2
  %381 = load i32**, i32*** %380, align 8
  %382 = getelementptr inbounds i32*, i32** %381, i64 1
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %22, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 1
  %390 = load i32**, i32*** %389, align 8
  %391 = getelementptr inbounds i32*, i32** %390, i64 1
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %22, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @put_bits(%struct.TYPE_7__* %378, i32 %387, i32 %396)
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 3
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 2
  %402 = load i32**, i32*** %401, align 8
  %403 = getelementptr inbounds i32*, i32** %402, i64 0
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %21, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 1
  %411 = load i32**, i32*** %410, align 8
  %412 = getelementptr inbounds i32*, i32** %411, i64 0
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %21, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @put_bits(%struct.TYPE_7__* %399, i32 %408, i32 %417)
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 3
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 2
  %423 = load i32**, i32*** %422, align 8
  %424 = getelementptr inbounds i32*, i32** %423, i64 2
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %23, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i32 0, i32 1
  %432 = load i32**, i32*** %431, align 8
  %433 = getelementptr inbounds i32*, i32** %432, i64 2
  %434 = load i32*, i32** %433, align 8
  %435 = load i32, i32* %23, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %434, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @put_bits(%struct.TYPE_7__* %420, i32 %429, i32 %438)
  br label %440

440:                                              ; preds = %332
  %441 = load i32, i32* %8, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %8, align 4
  br label %328

443:                                              ; preds = %328
  br label %444

444:                                              ; preds = %443, %326
  store i32 0, i32* %4, align 4
  br label %445

445:                                              ; preds = %444, %164, %67
  %446 = load i32, i32* %4, align 4
  ret i32 %446
}

declare dso_local i32 @put_bits_count(%struct.TYPE_7__*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @put_bits(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
