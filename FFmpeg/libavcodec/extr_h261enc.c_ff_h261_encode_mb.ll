; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261enc.c_ff_h261_encode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h261enc.c_ff_h261_encode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32***, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@ff_h261_mba_bits = common dso_local global i32* null, align 8
@ff_h261_mba_code = common dso_local global i32* null, align 8
@ff_h261_mtype_bits = common dso_local global i32* null, align 8
@ff_h261_mtype_code = common dso_local global i32* null, align 8
@ff_h261_mtype_map = common dso_local global i64* null, align 8
@ff_h261_cbp_tab = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h261_encode_mb(%struct.TYPE_8__* %0, [64 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca [64 x i32]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store [64 x i32]* %1, [64 x i32]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = bitcast %struct.TYPE_8__* %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %9, align 8
  store i32 63, i32* %14, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %68, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load [64 x i32]*, [64 x i32]** %6, align 8
  %26 = bitcast [64 x i32]* %25 to i32**
  %27 = call i32 @get_cbp(%struct.TYPE_8__* %24, i32** %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %23
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32***, i32**** %45, align 8
  %47 = getelementptr inbounds i32**, i32*** %46, i64 0
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32***, i32**** %53, align 8
  %55 = getelementptr inbounds i32**, i32*** %54, i64 0
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %332

67:                                               ; preds = %23
  br label %68

68:                                               ; preds = %67, %4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 4
  %71 = load i32*, i32** @ff_h261_mba_bits, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** @ff_h261_mba_code, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @put_bits(i32* %70, i32 %76, i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %132, label %90

90:                                               ; preds = %68
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97, %90
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 3
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 3
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %120, %117
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 1
  %130 = zext i1 %129 to i32
  %131 = call i32 @av_assert1(i32 %130)
  br label %132

132:                                              ; preds = %125, %68
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %153

145:                                              ; preds = %137, %132
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %145, %140
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  %156 = load i32*, i32** @ff_h261_mtype_bits, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** @ff_h261_mtype_code, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %163, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @put_bits(i32* %155, i32 %162, i32 %169)
  %171 = load i64*, i64** @ff_h261_mtype_map, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %171, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = call i64 @IS_QUANT(i64 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %153
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %191, %194
  %196 = call i32 @ff_set_qscale(%struct.TYPE_8__* %188, i32 %195)
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @put_bits(i32* %198, i32 5, i32 %201)
  br label %203

203:                                              ; preds = %187, %153
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = call i64 @IS_16X16(i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %261

210:                                              ; preds = %203
  %211 = load i32, i32* %7, align 4
  %212 = ashr i32 %211, 1
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i32***, i32**** %214, align 8
  %216 = getelementptr inbounds i32**, i32*** %215, i64 0
  %217 = load i32**, i32*** %216, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %212, %221
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %8, align 4
  %224 = ashr i32 %223, 1
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = load i32***, i32**** %226, align 8
  %228 = getelementptr inbounds i32**, i32*** %227, i64 0
  %229 = load i32**, i32*** %228, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %224, %233
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %7, align 4
  %236 = ashr i32 %235, 1
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = load i32***, i32**** %238, align 8
  %240 = getelementptr inbounds i32**, i32*** %239, i64 0
  %241 = load i32**, i32*** %240, align 8
  %242 = getelementptr inbounds i32*, i32** %241, i64 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 %236, i32* %244, align 4
  %245 = load i32, i32* %8, align 4
  %246 = ashr i32 %245, 1
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i32***, i32**** %248, align 8
  %250 = getelementptr inbounds i32**, i32*** %249, i64 0
  %251 = load i32**, i32*** %250, align 8
  %252 = getelementptr inbounds i32*, i32** %251, i64 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  store i32 %246, i32* %254, align 4
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @h261_encode_motion(%struct.TYPE_9__* %255, i32 %256)
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %259 = load i32, i32* %12, align 4
  %260 = call i32 @h261_encode_motion(%struct.TYPE_9__* %258, i32 %259)
  br label %261

261:                                              ; preds = %210, %203
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = call i64 @HAS_CBP(i64 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %292

268:                                              ; preds = %261
  %269 = load i32, i32* %14, align 4
  %270 = icmp sgt i32 %269, 0
  %271 = zext i1 %270 to i32
  %272 = call i32 @av_assert1(i32 %271)
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 4
  %275 = load i32**, i32*** @ff_h261_cbp_tab, align 8
  %276 = load i32, i32* %14, align 4
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32*, i32** %275, i64 %278
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32**, i32*** @ff_h261_cbp_tab, align 8
  %284 = load i32, i32* %14, align 4
  %285 = sub nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32*, i32** %283, i64 %286
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @put_bits(i32* %274, i32 %282, i32 %290)
  br label %292

292:                                              ; preds = %268, %261
  store i32 0, i32* %13, align 4
  br label %293

293:                                              ; preds = %305, %292
  %294 = load i32, i32* %13, align 4
  %295 = icmp slt i32 %294, 6
  br i1 %295, label %296, label %308

296:                                              ; preds = %293
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %298 = load [64 x i32]*, [64 x i32]** %6, align 8
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [64 x i32], [64 x i32]* %298, i64 %300
  %302 = getelementptr inbounds [64 x i32], [64 x i32]* %301, i64 0, i64 0
  %303 = load i32, i32* %13, align 4
  %304 = call i32 @h261_encode_block(%struct.TYPE_9__* %297, i32* %302, i32 %303)
  br label %305

305:                                              ; preds = %296
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %13, align 4
  br label %293

308:                                              ; preds = %293
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  %313 = call i64 @IS_16X16(i64 %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %332, label %315

315:                                              ; preds = %308
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 1
  %318 = load i32***, i32**** %317, align 8
  %319 = getelementptr inbounds i32**, i32*** %318, i64 0
  %320 = load i32**, i32*** %319, align 8
  %321 = getelementptr inbounds i32*, i32** %320, i64 0
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  store i32 0, i32* %323, align 4
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 1
  %326 = load i32***, i32**** %325, align 8
  %327 = getelementptr inbounds i32**, i32*** %326, i64 0
  %328 = load i32**, i32*** %327, align 8
  %329 = getelementptr inbounds i32*, i32** %328, i64 0
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  store i32 0, i32* %331, align 4
  br label %332

332:                                              ; preds = %35, %315, %308
  ret void
}

declare dso_local i32 @get_cbp(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i64 @IS_QUANT(i64) #1

declare dso_local i32 @ff_set_qscale(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @IS_16X16(i64) #1

declare dso_local i32 @h261_encode_motion(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @HAS_CBP(i64) #1

declare dso_local i32 @h261_encode_block(%struct.TYPE_9__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
