; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_graticule16_column.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_graticule16_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float, i32, i64, i32, i32, i32, i32*, i32, i32, i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)*, i64, %struct.TYPE_9__*, i32 (i32*, i32, i32, float, float, i32, i32)*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i32*, i64* }

@PARADE = common dso_local global i64 0, align 8
@STACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @graticule16_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graticule16_column(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 2
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  store float %31, float* %6, align 4
  %32 = load float, float* %6, align 4
  %33 = fpext float %32 to double
  %34 = fsub double 1.000000e+00, %33
  %35 = fptrunc double %34 to float
  store float %35, float* %7, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 256
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PARADE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %2
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %48, %51
  br label %57

53:                                               ; preds = %2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %53, %45
  %58 = phi i32 [ %52, %45 ], [ %56, %53 ]
  store i32 %58, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %292, %57
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %295

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 1, %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %65
  br label %292

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 14
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* %12, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i32 [ 0, %89 ], [ %91, %90 ]
  store i32 %93, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %184, %92
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %187

100:                                              ; preds = %94
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %107, %108
  store i32 %109, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %180, %100
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %183

116:                                              ; preds = %110
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 12
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 11
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %116
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 1
  %140 = load i32, i32* %18, align 4
  %141 = sub nsw i32 %139, %140
  br label %144

142:                                              ; preds = %116
  %143 = load i32, i32* %18, align 4
  br label %144

144:                                              ; preds = %142, %135
  %145 = phi i32 [ %141, %135 ], [ %143, %142 ]
  %146 = add nsw i32 %130, %145
  store i32 %146, i32* %19, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load i64*, i64** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %19, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %154, %161
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %153, %163
  %165 = inttoptr i64 %164 to i32*
  %166 = load i32, i32* %15, align 4
  %167 = mul nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32* %169, i32** %20, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 13
  %172 = load i32 (i32*, i32, i32, float, float, i32, i32)*, i32 (i32*, i32, i32, float, float, i32, i32)** %171, align 8
  %173 = load i32*, i32** %20, align 8
  %174 = load i32, i32* %9, align 4
  %175 = load float, float* %6, align 4
  %176 = load float, float* %7, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i32 %172(i32* %173, i32 %174, i32 1, float %175, float %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %144
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %110

183:                                              ; preds = %110
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %94

187:                                              ; preds = %94
  store i32 0, i32* %14, align 4
  br label %188

188:                                              ; preds = %266, %187
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 8
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, 1
  %199 = icmp ne i32 %198, 0
  br label %200

200:                                              ; preds = %194, %188
  %201 = phi i1 [ false, %188 ], [ %199, %194 ]
  br i1 %201, label %202, label %269

202:                                              ; preds = %200
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 12
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  store i8* %215, i8** %21, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 12
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  store i32 %228, i32* %22, align 4
  %229 = load i32, i32* %16, align 4
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 11
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %202
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 9
  %237 = load i32, i32* %236, align 4
  %238 = sub nsw i32 %237, 1
  %239 = load i32, i32* %22, align 4
  %240 = sub nsw i32 %238, %239
  br label %243

241:                                              ; preds = %202
  %242 = load i32, i32* %22, align 4
  br label %243

243:                                              ; preds = %241, %234
  %244 = phi i32 [ %240, %234 ], [ %242, %241 ]
  %245 = add nsw i32 %229, %244
  %246 = sub nsw i32 %245, 10
  store i32 %246, i32* %23, align 4
  %247 = load i32, i32* %23, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %243
  store i32 4, i32* %23, align 4
  br label %250

250:                                              ; preds = %249, %243
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 10
  %253 = load i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)*, i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)** %252, align 8
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %255 = load i32, i32* %15, align 4
  %256 = add nsw i32 2, %255
  %257 = load i32, i32* %23, align 4
  %258 = load i32, i32* %8, align 4
  %259 = load float, float* %6, align 4
  %260 = load float, float* %7, align 4
  %261 = load i8*, i8** %21, align 8
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 7
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 %253(%struct.TYPE_11__* %254, i32 %256, i32 %257, i32 %258, float %259, float %260, i8* %261, i32* %264)
  br label %266

266:                                              ; preds = %250
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %14, align 4
  br label %188

269:                                              ; preds = %200
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @STACK, align 8
  %277 = icmp eq i64 %275, %276
  %278 = zext i1 %277 to i32
  %279 = mul nsw i32 %272, %278
  %280 = load i32, i32* %16, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %16, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @PARADE, align 8
  %287 = icmp eq i64 %285, %286
  %288 = zext i1 %287 to i32
  %289 = mul nsw i32 %282, %288
  %290 = load i32, i32* %15, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %15, align 4
  br label %292

292:                                              ; preds = %269, %81
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %12, align 4
  br label %59

295:                                              ; preds = %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
