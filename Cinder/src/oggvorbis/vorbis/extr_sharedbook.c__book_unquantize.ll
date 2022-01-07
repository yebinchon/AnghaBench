; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c__book_unquantize.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_sharedbook.c__book_unquantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, float*, i32, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float* @_book_unquantize(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %255

30:                                               ; preds = %25, %3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call float @_float32_unpack(i32 %33)
  store float %34, float* %12, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = call float @_float32_unpack(i32 %37)
  store float %38, float* %13, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = call float* @_ogg_calloc(i32 %43, i32 4)
  store float* %44, float** %14, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %253 [
    i32 1, label %48
    i32 2, label %154
  ]

48:                                               ; preds = %30
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = call i32 @_book_maptype1_quantvals(%struct.TYPE_4__* %49)
  store i32 %50, i32* %11, align 4
  store i64 0, i64* %8, align 8
  br label %51

51:                                               ; preds = %150, %48
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %153

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60, %57
  %69 = load i32*, i32** %7, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %149, label %71

71:                                               ; preds = %68, %60
  store float 0.000000e+00, float* %15, align 4
  store i32 1, i32* %16, align 4
  store i64 0, i64* %9, align 8
  br label %72

72:                                               ; preds = %143, %71
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %79, label %146

79:                                               ; preds = %72
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = sdiv i64 %80, %82
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = srem i64 %83, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %17, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load float*, float** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  store float %94, float* %18, align 4
  %95 = load float, float* %18, align 4
  %96 = call float @fabs(float %95)
  %97 = load float, float* %13, align 4
  %98 = fmul float %96, %97
  %99 = load float, float* %12, align 4
  %100 = fadd float %98, %99
  %101 = load float, float* %15, align 4
  %102 = fadd float %100, %101
  store float %102, float* %18, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %79
  %108 = load float, float* %18, align 4
  store float %108, float* %15, align 4
  br label %109

109:                                              ; preds = %107, %79
  %110 = load i32*, i32** %7, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = load float, float* %18, align 4
  %114 = load float*, float** %14, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %9, align 8
  %125 = add nsw i64 %123, %124
  %126 = getelementptr inbounds float, float* %114, i64 %125
  store float %113, float* %126, align 4
  br label %139

127:                                              ; preds = %109
  %128 = load float, float* %18, align 4
  %129 = load float*, float** %14, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %130, %134
  %136 = load i64, i64* %9, align 8
  %137 = add nsw i64 %135, %136
  %138 = getelementptr inbounds float, float* %129, i64 %137
  store float %128, float* %138, align 4
  br label %139

139:                                              ; preds = %127, %112
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %16, align 4
  %142 = mul nsw i32 %141, %140
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %9, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %9, align 8
  br label %72

146:                                              ; preds = %72
  %147 = load i64, i64* %10, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %10, align 8
  br label %149

149:                                              ; preds = %146, %68
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %8, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %8, align 8
  br label %51

153:                                              ; preds = %51
  br label %253

154:                                              ; preds = %30
  store i64 0, i64* %8, align 8
  br label %155

155:                                              ; preds = %249, %154
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %161, label %252

161:                                              ; preds = %155
  %162 = load i32*, i32** %7, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %161
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %8, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %164, %161
  %173 = load i32*, i32** %7, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %248, label %175

175:                                              ; preds = %172, %164
  store float 0.000000e+00, float* %19, align 4
  store i64 0, i64* %9, align 8
  br label %176

176:                                              ; preds = %242, %175
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %177, %181
  br i1 %182, label %183, label %245

183:                                              ; preds = %176
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 3
  %186 = load float*, float** %185, align 8
  %187 = load i64, i64* %8, align 8
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %187, %191
  %193 = load i64, i64* %9, align 8
  %194 = add nsw i64 %192, %193
  %195 = getelementptr inbounds float, float* %186, i64 %194
  %196 = load float, float* %195, align 4
  store float %196, float* %20, align 4
  %197 = load float, float* %20, align 4
  %198 = call float @fabs(float %197)
  %199 = load float, float* %13, align 4
  %200 = fmul float %198, %199
  %201 = load float, float* %12, align 4
  %202 = fadd float %200, %201
  %203 = load float, float* %19, align 4
  %204 = fadd float %202, %203
  store float %204, float* %20, align 4
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %183
  %210 = load float, float* %20, align 4
  store float %210, float* %19, align 4
  br label %211

211:                                              ; preds = %209, %183
  %212 = load i32*, i32** %7, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %229

214:                                              ; preds = %211
  %215 = load float, float* %20, align 4
  %216 = load float*, float** %14, align 8
  %217 = load i32*, i32** %7, align 8
  %218 = load i64, i64* %10, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = mul nsw i32 %220, %223
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* %9, align 8
  %227 = add nsw i64 %225, %226
  %228 = getelementptr inbounds float, float* %216, i64 %227
  store float %215, float* %228, align 4
  br label %241

229:                                              ; preds = %211
  %230 = load float, float* %20, align 4
  %231 = load float*, float** %14, align 8
  %232 = load i64, i64* %10, align 8
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = mul nsw i64 %232, %236
  %238 = load i64, i64* %9, align 8
  %239 = add nsw i64 %237, %238
  %240 = getelementptr inbounds float, float* %231, i64 %239
  store float %230, float* %240, align 4
  br label %241

241:                                              ; preds = %229, %214
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %9, align 8
  %244 = add nsw i64 %243, 1
  store i64 %244, i64* %9, align 8
  br label %176

245:                                              ; preds = %176
  %246 = load i64, i64* %10, align 8
  %247 = add nsw i64 %246, 1
  store i64 %247, i64* %10, align 8
  br label %248

248:                                              ; preds = %245, %172
  br label %249

249:                                              ; preds = %248
  %250 = load i64, i64* %8, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %8, align 8
  br label %155

252:                                              ; preds = %155
  br label %253

253:                                              ; preds = %30, %252, %153
  %254 = load float*, float** %14, align 8
  store float* %254, float** %4, align 8
  br label %256

255:                                              ; preds = %25
  store float* null, float** %4, align 8
  br label %256

256:                                              ; preds = %255, %253
  %257 = load float*, float** %4, align 8
  ret float* %257
}

declare dso_local float @_float32_unpack(i32) #1

declare dso_local float* @_ogg_calloc(i32, i32) #1

declare dso_local i32 @_book_maptype1_quantvals(%struct.TYPE_4__*) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
