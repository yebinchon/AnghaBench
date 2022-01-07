; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_graticule_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_graticule_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float, i64, i32, i32, i32, i32*, i32, i32, i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)*, i64, %struct.TYPE_9__*, i32 (i32*, i32, i32, float, float, i32, i32)*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i32*, i32** }

@PARADE = common dso_local global i64 0, align 8
@STACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @graticule_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graticule_row(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
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
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 2
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load float, float* %29, align 4
  store float %30, float* %6, align 4
  %31 = load float, float* %6, align 4
  %32 = fpext float %31 to double
  %33 = fsub double 1.000000e+00, %32
  %34 = fptrunc double %33 to float
  store float %34, float* %7, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PARADE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %2
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = sdiv i32 %43, %46
  br label %52

48:                                               ; preds = %2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi i32 [ %47, %40 ], [ %51, %48 ]
  store i32 %53, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %289, %52
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %292

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 1, %61
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73, %60
  br label %289

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 13
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  br label %87

87:                                               ; preds = %85, %84
  %88 = phi i32 [ 0, %84 ], [ %86, %85 ]
  store i32 %88, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %182, %87
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %185

95:                                               ; preds = %89
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %178, %95
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %181

109:                                              ; preds = %103
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 11
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 10
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %109
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %17, align 4
  %134 = sub nsw i32 %132, %133
  br label %137

135:                                              ; preds = %109
  %136 = load i32, i32* %17, align 4
  br label %137

137:                                              ; preds = %135, %128
  %138 = phi i32 [ %134, %128 ], [ %136, %135 ]
  %139 = add nsw i32 %123, %138
  store i32 %139, i32* %18, align 4
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %147, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %146, i64 %156
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32* %160, i32** %19, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 12
  %163 = load i32 (i32*, i32, i32, float, float, i32, i32)*, i32 (i32*, i32, i32, float, float, i32, i32)** %162, align 8
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load float, float* %6, align 4
  %174 = load float, float* %7, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %5, align 4
  %177 = call i32 %163(i32* %164, i32 %165, i32 %172, float %173, float %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %137
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %13, align 4
  br label %103

181:                                              ; preds = %103
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %89

185:                                              ; preds = %89
  store i32 0, i32* %13, align 4
  br label %186

186:                                              ; preds = %263, %185
  %187 = load i32, i32* %13, align 4
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, 1
  %197 = icmp ne i32 %196, 0
  br label %198

198:                                              ; preds = %192, %186
  %199 = phi i1 [ false, %186 ], [ %197, %192 ]
  br i1 %199, label %200, label %266

200:                                              ; preds = %198
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 11
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  store i8* %213, i8** %20, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 11
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  store i32 %226, i32* %21, align 4
  %227 = load i32, i32* %14, align 4
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 10
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %200
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %235, 1
  %237 = load i32, i32* %21, align 4
  %238 = sub nsw i32 %236, %237
  br label %241

239:                                              ; preds = %200
  %240 = load i32, i32* %21, align 4
  br label %241

241:                                              ; preds = %239, %232
  %242 = phi i32 [ %238, %232 ], [ %240, %239 ]
  %243 = add nsw i32 %227, %242
  %244 = sub nsw i32 %243, 10
  store i32 %244, i32* %22, align 4
  %245 = load i32, i32* %22, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  store i32 4, i32* %22, align 4
  br label %248

248:                                              ; preds = %247, %241
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 9
  %251 = load i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)*, i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)** %250, align 8
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* %15, align 4
  %255 = add nsw i32 %254, 2
  %256 = load float, float* %6, align 4
  %257 = load float, float* %7, align 4
  %258 = load i8*, i8** %20, align 8
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 6
  %261 = load i32*, i32** %260, align 8
  %262 = call i32 %251(%struct.TYPE_11__* %252, i32 %253, i32 %255, i32 1, float %256, float %257, i8* %258, i32* %261)
  br label %263

263:                                              ; preds = %248
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %186

266:                                              ; preds = %198
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @STACK, align 8
  %274 = icmp eq i64 %272, %273
  %275 = zext i1 %274 to i32
  %276 = mul nsw i32 %269, %275
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %14, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @PARADE, align 8
  %284 = icmp eq i64 %282, %283
  %285 = zext i1 %284 to i32
  %286 = mul nsw i32 %279, %285
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %287, %286
  store i32 %288, i32* %15, align 4
  br label %289

289:                                              ; preds = %266, %76
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %54

292:                                              ; preds = %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
