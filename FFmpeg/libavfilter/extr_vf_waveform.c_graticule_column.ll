; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_graticule_column.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_waveform.c_graticule_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, float, i64, i32, i32, i32, i32*, i32, i32, i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)*, i64, %struct.TYPE_9__*, i32 (i32*, i32, i32, float, float, i32, i32)*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i32*, i32** }

@PARADE = common dso_local global i64 0, align 8
@STACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @graticule_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graticule_column(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
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

54:                                               ; preds = %282, %52
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %285

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
  br label %282

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

89:                                               ; preds = %175, %87
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %178

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

103:                                              ; preds = %171, %95
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %174

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
  %147 = load i32, i32* %18, align 4
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
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32* %160, i32** %19, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 12
  %163 = load i32 (i32*, i32, i32, float, float, i32, i32)*, i32 (i32*, i32, i32, float, float, i32, i32)** %162, align 8
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load float, float* %6, align 4
  %167 = load float, float* %7, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %5, align 4
  %170 = call i32 %163(i32* %164, i32 %165, i32 1, float %166, float %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %137
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %103

174:                                              ; preds = %103
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %12, align 4
  br label %89

178:                                              ; preds = %89
  store i32 0, i32* %13, align 4
  br label %179

179:                                              ; preds = %256, %178
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 1
  %190 = icmp ne i32 %189, 0
  br label %191

191:                                              ; preds = %185, %179
  %192 = phi i1 [ false, %179 ], [ %190, %185 ]
  br i1 %192, label %193, label %259

193:                                              ; preds = %191
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 11
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  store i8* %206, i8** %20, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 11
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %21, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 10
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %193
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %228, 1
  %230 = load i32, i32* %21, align 4
  %231 = sub nsw i32 %229, %230
  br label %234

232:                                              ; preds = %193
  %233 = load i32, i32* %21, align 4
  br label %234

234:                                              ; preds = %232, %225
  %235 = phi i32 [ %231, %225 ], [ %233, %232 ]
  %236 = add nsw i32 %220, %235
  %237 = sub nsw i32 %236, 10
  store i32 %237, i32* %22, align 4
  %238 = load i32, i32* %22, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  store i32 4, i32* %22, align 4
  br label %241

241:                                              ; preds = %240, %234
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 9
  %244 = load i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)*, i32 (%struct.TYPE_11__*, i32, i32, i32, float, float, i8*, i32*)** %243, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 2, %246
  %248 = load i32, i32* %22, align 4
  %249 = load float, float* %6, align 4
  %250 = load float, float* %7, align 4
  %251 = load i8*, i8** %20, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 6
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 %244(%struct.TYPE_11__* %245, i32 %247, i32 %248, i32 1, float %249, float %250, i8* %251, i32* %254)
  br label %256

256:                                              ; preds = %241
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %179

259:                                              ; preds = %191
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 8
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @STACK, align 8
  %267 = icmp eq i64 %265, %266
  %268 = zext i1 %267 to i32
  %269 = mul nsw i32 %262, %268
  %270 = load i32, i32* %14, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %14, align 4
  %272 = load i32, i32* %8, align 4
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @PARADE, align 8
  %277 = icmp eq i64 %275, %276
  %278 = zext i1 %277 to i32
  %279 = mul nsw i32 %272, %278
  %280 = load i32, i32* %15, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %15, align 4
  br label %282

282:                                              ; preds = %259, %76
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %11, align 4
  br label %54

285:                                              ; preds = %54
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
