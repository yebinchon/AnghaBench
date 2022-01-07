; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decompress_i3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decompress_i3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, i32)* @decompress_i3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decompress_i3(%struct.TYPE_13__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %8, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  store i32* %31, i32** %9, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  store i32* %33, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @bytestream2_skip(i32* %39, i32 1)
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @init_rangecoder3(i32* %41, i32* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = call i32 @reinit_tables3(%struct.TYPE_12__* %44)
  br label %46

46:                                               ; preds = %151, %3
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %152

53:                                               ; preds = %46
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = call i32 @decode_units3(%struct.TYPE_12__* %54, i32* %24, i32* %25, i32* %26, i32* %11, i32* %12)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %4, align 4
  br label %314

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @decode_value3(%struct.TYPE_12__* %61, i32 255, i32* %66, i32 %74, i32 %82, i32 %88, i32 %94, i32* %14)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %60
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %4, align 4
  br label %314

100:                                              ; preds = %60
  %101 = load i32, i32* %14, align 4
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %104, i32* %4, align 4
  br label %314

105:                                              ; preds = %100
  %106 = load i32, i32* %26, align 4
  %107 = shl i32 %106, 16
  %108 = load i32, i32* %25, align 4
  %109 = shl i32 %108, 8
  %110 = add nsw i32 %107, %109
  %111 = load i32, i32* %24, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %150, %105
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %14, align 4
  %119 = icmp sgt i32 %117, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %116
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sge i32 %121, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %127, i32* %4, align 4
  br label %314

128:                                              ; preds = %120
  %129 = load i32, i32* %20, align 4
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  store i32 %129, i32* %137, align 4
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %21, align 4
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %22, align 4
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp sge i32 %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %128
  store i32 0, i32* %17, align 4
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %147, %128
  br label %116

151:                                              ; preds = %116
  br label %46

152:                                              ; preds = %46
  %153 = load i32, i32* %7, align 4
  %154 = sub nsw i32 0, %153
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  store i32 0, i32* %23, align 4
  br label %156

156:                                              ; preds = %312, %152
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load i32, i32* %16, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %163, %166
  br label %168

168:                                              ; preds = %162, %156
  %169 = phi i1 [ false, %156 ], [ %167, %162 ]
  br i1 %169, label %170, label %313

170:                                              ; preds = %168
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = load i32, i32* %23, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 3
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = load i32, i32* %23, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = load i32, i32* %23, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = load i32, i32* %23, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = load i32, i32* %23, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @decode_value3(%struct.TYPE_12__* %171, i32 5, i32* %178, i32 %188, i32 %198, i32 %206, i32 %214, i32* %23)
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %18, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %170
  %219 = load i32, i32* %18, align 4
  store i32 %219, i32* %4, align 4
  br label %314

220:                                              ; preds = %170
  %221 = load i32, i32* %23, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %220
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %225 = call i32 @decode_units3(%struct.TYPE_12__* %224, i32* %24, i32* %25, i32* %26, i32* %11, i32* %12)
  store i32 %225, i32* %18, align 4
  %226 = load i32, i32* %18, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i32, i32* %18, align 4
  store i32 %229, i32* %4, align 4
  br label %314

230:                                              ; preds = %223
  %231 = load i32, i32* %26, align 4
  %232 = shl i32 %231, 16
  %233 = load i32, i32* %25, align 4
  %234 = shl i32 %233, 8
  %235 = add nsw i32 %232, %234
  %236 = load i32, i32* %24, align 4
  %237 = add nsw i32 %235, %236
  store i32 %237, i32* %20, align 4
  br label %238

238:                                              ; preds = %230, %220
  %239 = load i32, i32* %23, align 4
  %240 = icmp sgt i32 %239, 5
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %242, i32* %4, align 4
  br label %314

243:                                              ; preds = %238
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = load i32, i32* %23, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = load i32, i32* %23, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = load i32, i32* %23, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = load i32, i32* %23, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %281, align 8
  %283 = load i32, i32* %23, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @decode_value3(%struct.TYPE_12__* %244, i32 255, i32* %251, i32 %261, i32 %271, i32 %279, i32 %287, i32* %14)
  store i32 %288, i32* %18, align 4
  %289 = load i32, i32* %18, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %243
  %292 = load i32, i32* %18, align 4
  store i32 %292, i32* %4, align 4
  br label %314

293:                                              ; preds = %243
  %294 = load i32, i32* %14, align 4
  %295 = icmp sle i32 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %297, i32* %4, align 4
  br label %314

298:                                              ; preds = %293
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %300 = load i32, i32* %23, align 4
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* %20, align 4
  %303 = load i32*, i32** %6, align 8
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* %19, align 4
  %306 = load i32, i32* %15, align 4
  %307 = call i32 @decode_run_i(%struct.TYPE_13__* %299, i32 %300, i32 %301, i32* %17, i32* %16, i32 %302, i32* %303, i32 %304, i32* %21, i32* %22, i32 %305, i32 %306, i32* %11, i32* %12)
  store i32 %307, i32* %18, align 4
  %308 = load i32, i32* %18, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %298
  %311 = load i32, i32* %18, align 4
  store i32 %311, i32* %4, align 4
  br label %314

312:                                              ; preds = %298
  br label %156

313:                                              ; preds = %168
  store i32 0, i32* %4, align 4
  br label %314

314:                                              ; preds = %313, %310, %296, %291, %241, %228, %218, %126, %103, %98, %58
  %315 = load i32, i32* %4, align 4
  ret i32 %315
}

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @init_rangecoder3(i32*, i32*) #1

declare dso_local i32 @reinit_tables3(%struct.TYPE_12__*) #1

declare dso_local i32 @decode_units3(%struct.TYPE_12__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @decode_value3(%struct.TYPE_12__*, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @decode_run_i(%struct.TYPE_13__*, i32, i32, i32*, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
