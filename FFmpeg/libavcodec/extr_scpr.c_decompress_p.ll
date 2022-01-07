; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decompress_p.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.c_decompress_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64*, i32, i64*, i32)* @decompress_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_p(%struct.TYPE_8__* %0, i64* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %12, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 14
  store i32* %47, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %22, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = call i64 @bytestream2_get_byte(i32* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %578

57:                                               ; preds = %5
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @bytestream2_skip(i32* %58, i32 1)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 13
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @init_rangecoder(i32* %61, i32* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %64, i32 %67, i32 256, i32 1, i32* %16)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %69, i32 %72, i32 256, i32 1, i32* %15)
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %57
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %6, align 4
  br label %578

80:                                               ; preds = %57
  %81 = load i32, i32* %15, align 4
  %82 = shl i32 %81, 8
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %16, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 12
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %85, i32 %88, i32 256, i32 1, i32* %17)
  store i32 %89, i32* %14, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %90, i32 %93, i32 256, i32 1, i32* %15)
  %95 = load i32, i32* %14, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %80
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %578

101:                                              ; preds = %80
  %102 = load i32, i32* %15, align 4
  %103 = shl i32 %102, 8
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109, %101
  %116 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %116, i32* %6, align 4
  br label %578

117:                                              ; preds = %109
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = mul i64 4, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memset(i32* %120, i32 0, i32 %126)
  br label %128

128:                                              ; preds = %176, %117
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %177

132:                                              ; preds = %128
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %133, i32 %136, i32 5, i32 10, i32* %23)
  store i32 %137, i32* %14, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %138, i32 %141, i32 256, i32 20, i32* %24)
  %143 = load i32, i32* %14, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %132
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %6, align 4
  br label %578

149:                                              ; preds = %132
  %150 = load i32, i32* %24, align 4
  %151 = icmp sle i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %153, i32* %6, align 4
  br label %578

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %167, %154
  %156 = load i32, i32* %16, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* %24, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %24, align 4
  %164 = icmp sgt i32 %162, 0
  br label %165

165:                                              ; preds = %161, %155
  %166 = phi i1 [ false, %155 ], [ %164, %161 ]
  br i1 %166, label %167, label %176

167:                                              ; preds = %165
  %168 = load i32, i32* %23, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  store i32 %168, i32* %175, align 4
  br label %155

176:                                              ; preds = %165
  br label %128

177:                                              ; preds = %128
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @av_frame_copy(i32 %180, i32 %183)
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %177
  %188 = load i32, i32* %14, align 4
  store i32 %188, i32* %6, align 4
  br label %578

189:                                              ; preds = %177
  store i32 0, i32* %19, align 4
  br label %190

190:                                              ; preds = %574, %189
  %191 = load i32, i32* %19, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %577

196:                                              ; preds = %190
  store i32 0, i32* %18, align 4
  br label %197

197:                                              ; preds = %570, %196
  %198 = load i32, i32* %18, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %573

203:                                              ; preds = %197
  store i32 0, i32* %25, align 4
  store i32 16, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 16, i32* %28, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %19, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %207, %210
  %212 = load i32, i32* %18, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %206, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %203
  br label %570

219:                                              ; preds = %203
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %19, align 4
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %223, %226
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %222, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %232, 1
  %234 = and i32 %233, 1
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %280

236:                                              ; preds = %219
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %237, i32 %242, i32 16, i32 100, i32* %27)
  store i32 %243, i32* %14, align 4
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 7
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %244, i32 %249, i32 16, i32 100, i32* %25)
  %251 = load i32, i32* %14, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %14, align 4
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 7
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %253, i32 %258, i32 16, i32 100, i32* %28)
  %260 = load i32, i32* %14, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %14, align 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 7
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 3
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %262, i32 %267, i32 16, i32 100, i32* %26)
  %269 = load i32, i32* %14, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %14, align 4
  %271 = load i32, i32* %14, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %236
  %274 = load i32, i32* %14, align 4
  store i32 %274, i32* %6, align 4
  br label %578

275:                                              ; preds = %236
  %276 = load i32, i32* %28, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %28, align 4
  %278 = load i32, i32* %26, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %26, align 4
  br label %280

280:                                              ; preds = %275, %219
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %19, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 %284, %287
  %289 = load i32, i32* %18, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %283, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %293, 1
  %295 = and i32 %294, 2
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %470

297:                                              ; preds = %280
  %298 = load i32, i32* %19, align 4
  %299 = mul nsw i32 %298, 16
  store i32 %299, i32* %31, align 4
  %300 = load i32, i32* %18, align 4
  %301 = mul nsw i32 %300, 16
  store i32 %301, i32* %32, align 4
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 6
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %302, i32 %307, i32 512, i32 100, i32* %33)
  store i32 %308, i32* %14, align 4
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 6
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  %314 = load i32, i32* %313, align 4
  %315 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %309, i32 %314, i32 512, i32 100, i32* %34)
  %316 = load i32, i32* %14, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %14, align 4
  %318 = load i32, i32* %14, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %297
  %321 = load i32, i32* %14, align 4
  store i32 %321, i32* %6, align 4
  br label %578

322:                                              ; preds = %297
  %323 = load i32, i32* %33, align 4
  %324 = sub nsw i32 %323, 256
  store i32 %324, i32* %33, align 4
  %325 = load i32, i32* %34, align 4
  %326 = sub nsw i32 %325, 256
  store i32 %326, i32* %34, align 4
  %327 = load i32, i32* %31, align 4
  %328 = load i32, i32* %34, align 4
  %329 = add nsw i32 %327, %328
  %330 = load i32, i32* %25, align 4
  %331 = add nsw i32 %329, %330
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %360, label %333

333:                                              ; preds = %322
  %334 = load i32, i32* %32, align 4
  %335 = load i32, i32* %33, align 4
  %336 = add nsw i32 %334, %335
  %337 = load i32, i32* %27, align 4
  %338 = add nsw i32 %336, %337
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %360, label %340

340:                                              ; preds = %333
  %341 = load i32, i32* %31, align 4
  %342 = load i32, i32* %34, align 4
  %343 = add nsw i32 %341, %342
  %344 = load i32, i32* %25, align 4
  %345 = add nsw i32 %343, %344
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp sge i32 %345, %348
  br i1 %349, label %360, label %350

350:                                              ; preds = %340
  %351 = load i32, i32* %32, align 4
  %352 = load i32, i32* %33, align 4
  %353 = add nsw i32 %351, %352
  %354 = load i32, i32* %27, align 4
  %355 = add nsw i32 %353, %354
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp sge i32 %355, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %350, %340, %333, %322
  %361 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %361, i32* %6, align 4
  br label %578

362:                                              ; preds = %350
  store i32 0, i32* %29, align 4
  br label %363

363:                                              ; preds = %466, %362
  %364 = load i32, i32* %29, align 4
  %365 = load i32, i32* %26, align 4
  %366 = load i32, i32* %25, align 4
  %367 = sub nsw i32 %365, %366
  %368 = icmp slt i32 %364, %367
  br i1 %368, label %369, label %391

369:                                              ; preds = %363
  %370 = load i32, i32* %31, align 4
  %371 = load i32, i32* %25, align 4
  %372 = add nsw i32 %370, %371
  %373 = load i32, i32* %29, align 4
  %374 = add nsw i32 %372, %373
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = icmp slt i32 %374, %377
  br i1 %378, label %379, label %391

379:                                              ; preds = %369
  %380 = load i32, i32* %31, align 4
  %381 = load i32, i32* %34, align 4
  %382 = add nsw i32 %380, %381
  %383 = load i32, i32* %25, align 4
  %384 = add nsw i32 %382, %383
  %385 = load i32, i32* %29, align 4
  %386 = add nsw i32 %384, %385
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = icmp slt i32 %386, %389
  br label %391

391:                                              ; preds = %379, %369, %363
  %392 = phi i1 [ false, %369 ], [ false, %363 ], [ %390, %379 ]
  br i1 %392, label %393, label %469

393:                                              ; preds = %391
  store i32 0, i32* %30, align 4
  br label %394

394:                                              ; preds = %462, %393
  %395 = load i32, i32* %30, align 4
  %396 = load i32, i32* %28, align 4
  %397 = load i32, i32* %27, align 4
  %398 = sub nsw i32 %396, %397
  %399 = icmp slt i32 %395, %398
  br i1 %399, label %400, label %422

400:                                              ; preds = %394
  %401 = load i32, i32* %32, align 4
  %402 = load i32, i32* %27, align 4
  %403 = add nsw i32 %401, %402
  %404 = load i32, i32* %30, align 4
  %405 = add nsw i32 %403, %404
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp slt i32 %405, %408
  br i1 %409, label %410, label %422

410:                                              ; preds = %400
  %411 = load i32, i32* %32, align 4
  %412 = load i32, i32* %33, align 4
  %413 = add nsw i32 %411, %412
  %414 = load i32, i32* %27, align 4
  %415 = add nsw i32 %413, %414
  %416 = load i32, i32* %30, align 4
  %417 = add nsw i32 %415, %416
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp slt i32 %417, %420
  br label %422

422:                                              ; preds = %410, %400, %394
  %423 = phi i1 [ false, %400 ], [ false, %394 ], [ %421, %410 ]
  br i1 %423, label %424, label %465

424:                                              ; preds = %422
  %425 = load i64*, i64** %10, align 8
  %426 = load i32, i32* %31, align 4
  %427 = load i32, i32* %34, align 4
  %428 = add nsw i32 %426, %427
  %429 = load i32, i32* %25, align 4
  %430 = add nsw i32 %428, %429
  %431 = load i32, i32* %29, align 4
  %432 = add nsw i32 %430, %431
  %433 = load i32, i32* %11, align 4
  %434 = mul nsw i32 %432, %433
  %435 = load i32, i32* %32, align 4
  %436 = add nsw i32 %434, %435
  %437 = load i32, i32* %27, align 4
  %438 = add nsw i32 %436, %437
  %439 = load i32, i32* %33, align 4
  %440 = add nsw i32 %438, %439
  %441 = load i32, i32* %30, align 4
  %442 = add nsw i32 %440, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i64, i64* %425, i64 %443
  %445 = load i64, i64* %444, align 8
  %446 = load i64*, i64** %8, align 8
  %447 = load i32, i32* %31, align 4
  %448 = load i32, i32* %29, align 4
  %449 = add nsw i32 %447, %448
  %450 = load i32, i32* %25, align 4
  %451 = add nsw i32 %449, %450
  %452 = load i32, i32* %9, align 4
  %453 = mul nsw i32 %451, %452
  %454 = load i32, i32* %32, align 4
  %455 = add nsw i32 %453, %454
  %456 = load i32, i32* %27, align 4
  %457 = add nsw i32 %455, %456
  %458 = load i32, i32* %30, align 4
  %459 = add nsw i32 %457, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i64, i64* %446, i64 %460
  store i64 %445, i64* %461, align 8
  br label %462

462:                                              ; preds = %424
  %463 = load i32, i32* %30, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %30, align 4
  br label %394

465:                                              ; preds = %422
  br label %466

466:                                              ; preds = %465
  %467 = load i32, i32* %29, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %29, align 4
  br label %363

469:                                              ; preds = %391
  br label %569

470:                                              ; preds = %280
  %471 = load i32, i32* %18, align 4
  %472 = mul nsw i32 %471, 16
  %473 = load i32, i32* %27, align 4
  %474 = add nsw i32 %472, %473
  store i32 %474, i32* %36, align 4
  %475 = load i32, i32* %19, align 4
  %476 = mul nsw i32 %475, 16
  %477 = load i32, i32* %25, align 4
  %478 = add nsw i32 %476, %477
  store i32 %478, i32* %37, align 4
  store i64 0, i64* %42, align 8
  br label %479

479:                                              ; preds = %567, %470
  %480 = load i32, i32* %37, align 4
  %481 = load i32, i32* %19, align 4
  %482 = mul nsw i32 %481, 16
  %483 = load i32, i32* %26, align 4
  %484 = add nsw i32 %482, %483
  %485 = icmp slt i32 %480, %484
  br i1 %485, label %486, label %492

486:                                              ; preds = %479
  %487 = load i32, i32* %37, align 4
  %488 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = icmp slt i32 %487, %490
  br label %492

492:                                              ; preds = %486, %479
  %493 = phi i1 [ false, %479 ], [ %491, %486 ]
  br i1 %493, label %494, label %568

494:                                              ; preds = %492
  %495 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %496 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %497 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %496, i32 0, i32 5
  %498 = load i32*, i32** %497, align 8
  %499 = load i64, i64* %42, align 8
  %500 = getelementptr inbounds i32, i32* %498, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %495, i32 %501, i32 6, i32 1000, i64* %42)
  store i32 %502, i32* %14, align 4
  %503 = load i32, i32* %14, align 4
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %507

505:                                              ; preds = %494
  %506 = load i32, i32* %14, align 4
  store i32 %506, i32* %6, align 4
  br label %578

507:                                              ; preds = %494
  %508 = load i64, i64* %42, align 8
  %509 = icmp eq i64 %508, 0
  br i1 %509, label %510, label %525

510:                                              ; preds = %507
  %511 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %512 = call i32 @decode_units(%struct.TYPE_7__* %511, i64* %38, i64* %39, i64* %40, i32* %20, i32* %21)
  store i32 %512, i32* %14, align 4
  %513 = load i32, i32* %14, align 4
  %514 = icmp slt i32 %513, 0
  br i1 %514, label %515, label %517

515:                                              ; preds = %510
  %516 = load i32, i32* %14, align 4
  store i32 %516, i32* %6, align 4
  br label %578

517:                                              ; preds = %510
  %518 = load i64, i64* %40, align 8
  %519 = shl i64 %518, 16
  %520 = load i64, i64* %39, align 8
  %521 = shl i64 %520, 8
  %522 = add i64 %519, %521
  %523 = load i64, i64* %38, align 8
  %524 = add i64 %522, %523
  store i64 %524, i64* %41, align 8
  br label %525

525:                                              ; preds = %517, %507
  %526 = load i64, i64* %42, align 8
  %527 = icmp ugt i64 %526, 5
  br i1 %527, label %528, label %530

528:                                              ; preds = %525
  %529 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %529, i32* %6, align 4
  br label %578

530:                                              ; preds = %525
  %531 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %532 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %533 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %532, i32 0, i32 4
  %534 = load i32*, i32** %533, align 8
  %535 = load i64, i64* %42, align 8
  %536 = getelementptr inbounds i32, i32* %534, i64 %535
  %537 = load i32, i32* %536, align 4
  %538 = call i32 (%struct.TYPE_7__*, i32, i32, i32, ...) @decode_value(%struct.TYPE_7__* %531, i32 %537, i32 256, i32 400, i32* %35)
  store i32 %538, i32* %14, align 4
  %539 = load i32, i32* %14, align 4
  %540 = icmp slt i32 %539, 0
  br i1 %540, label %541, label %543

541:                                              ; preds = %530
  %542 = load i32, i32* %14, align 4
  store i32 %542, i32* %6, align 4
  br label %578

543:                                              ; preds = %530
  %544 = load i32, i32* %35, align 4
  %545 = icmp sle i32 %544, 0
  br i1 %545, label %546, label %548

546:                                              ; preds = %543
  %547 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %547, i32* %6, align 4
  br label %578

548:                                              ; preds = %543
  %549 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %550 = load i64, i64* %42, align 8
  %551 = load i32, i32* %35, align 4
  %552 = load i32, i32* %18, align 4
  %553 = load i32, i32* %19, align 4
  %554 = load i64, i64* %41, align 8
  %555 = load i64*, i64** %8, align 8
  %556 = load i64*, i64** %10, align 8
  %557 = load i32, i32* %9, align 4
  %558 = load i32, i32* %11, align 4
  %559 = load i32, i32* %22, align 4
  %560 = load i32, i32* %27, align 4
  %561 = load i32, i32* %28, align 4
  %562 = call i32 @decode_run_p(%struct.TYPE_8__* %549, i64 %550, i32 %551, i32 %552, i32 %553, i64 %554, i64* %555, i64* %556, i32 %557, i32 %558, i32* %36, i32* %37, i32 %559, i32 %560, i32 %561, i32* %20, i32* %21)
  store i32 %562, i32* %14, align 4
  %563 = load i32, i32* %14, align 4
  %564 = icmp slt i32 %563, 0
  br i1 %564, label %565, label %567

565:                                              ; preds = %548
  %566 = load i32, i32* %14, align 4
  store i32 %566, i32* %6, align 4
  br label %578

567:                                              ; preds = %548
  br label %479

568:                                              ; preds = %492
  br label %569

569:                                              ; preds = %568, %469
  br label %570

570:                                              ; preds = %569, %218
  %571 = load i32, i32* %18, align 4
  %572 = add nsw i32 %571, 1
  store i32 %572, i32* %18, align 4
  br label %197

573:                                              ; preds = %197
  br label %574

574:                                              ; preds = %573
  %575 = load i32, i32* %19, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %19, align 4
  br label %190

577:                                              ; preds = %190
  store i32 0, i32* %6, align 4
  br label %578

578:                                              ; preds = %577, %565, %546, %541, %528, %515, %505, %360, %320, %273, %187, %152, %147, %115, %99, %78, %56
  %579 = load i32, i32* %6, align 4
  ret i32 %579
}

declare dso_local i64 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @init_rangecoder(i32*, i32*) #1

declare dso_local i32 @decode_value(%struct.TYPE_7__*, i32, i32, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_frame_copy(i32, i32) #1

declare dso_local i32 @decode_units(%struct.TYPE_7__*, i64*, i64*, i64*, i32*, i32*) #1

declare dso_local i32 @decode_run_p(%struct.TYPE_8__*, i64, i32, i32, i32, i64, i64*, i64*, i32, i32, i32*, i32*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
